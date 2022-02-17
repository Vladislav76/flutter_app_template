import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/features/sample_feature/presentation/state_notifier/random_feature_object_state_notifier.dart';

class RandomFeatureObjectRequestButton extends ConsumerWidget {
  const RandomFeatureObjectRequestButton({
    Key? key,
    required this.message,
  }) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: ref.read(randomFeatureObjectStateProvider.notifier).randomize,
      child: Text(message),
    );
  }
}
