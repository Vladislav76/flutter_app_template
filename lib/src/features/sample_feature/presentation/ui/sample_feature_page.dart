import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/features/sample_feature/presentation/provider/random_entity_provider.dart';
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
              final futureAsyncEntity = ref.watch(randomEntityProvider);
              return futureAsyncEntity.when(
                data: (entity) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Random entity (ID: ${entity.id})'),
                    const RandomEntityRequestButton(),
                  ],
                ),
                error: (e, st) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Error: $e\n$st'),
                    const RandomEntityRequestButton(),
                  ],
                ),
                loading: () => const CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
