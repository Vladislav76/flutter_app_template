import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/generated/l10n.dart';
import 'package:template_app/src/features/sample_feature/presentation/state_notifier/random_entity_notifier.dart';
import 'package:template_app/src/features/sample_feature/presentation/ui/widgets/random_entity_request_button.dart';

class SampleFeaturePage extends StatelessWidget {
  const SampleFeaturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Consumer(
            builder: (_, ref, __) {
              final state = ref.watch(randomEntityStateProvider);
              return state.when(
                initial: () => Container(),
                loading: () => const CircularProgressIndicator(),
                data: (entity) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Random entity (ID: ${entity.id})'),
                    RandomEntityRequestButton(message: S.of(context).randomize),
                  ],
                ),
                error: (e) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Error: $e'),
                    RandomEntityRequestButton(message: S.of(context).tryAgain),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
