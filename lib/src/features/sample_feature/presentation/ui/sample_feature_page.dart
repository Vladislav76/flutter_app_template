import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/generated/l10n.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/features/sample_feature/domain/entity/entity.dart';
import 'package:template_app/src/features/sample_feature/presentation/state_notifier/random_entity_state_notifier.dart';
import 'package:template_app/src/features/sample_feature/presentation/ui/widgets/random_entity_request_button.dart';

class SampleFeaturePage extends StatelessWidget {
  const SampleFeaturePage({Key? key}) : super(key: key);
  static const routeName = '/sample_feature';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Consumer(
            builder: (_, ref, __) {
              // Listens errors
              ref.listen<ViewState<Entity, Object>>(
                randomEntityStateProvider,
                (_, state) {
                  state.whenOrNull(
                    error: (e, _) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e'))),
                  );
                },
              );
              // Builds state widget
              final state = ref.watch(randomEntityStateProvider);
              return state.when<Widget>(
                initial: () => Container(),
                loading: () => const CircularProgressIndicator(),
                data: (data) => _buildData(context, data),
                error: (error, lastData) => (lastData != null) ? _buildData(context, lastData) : _buildError(context, error),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildData(BuildContext context, Entity data) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Random entity (ID: ${data.id})'),
        RandomEntityRequestButton(message: S.of(context).randomize),
      ],
    );
  }

  Widget _buildError(BuildContext context, Object error) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Error: $error'),
        RandomEntityRequestButton(message: S.of(context).tryAgain),
      ],
    );
  }
}
