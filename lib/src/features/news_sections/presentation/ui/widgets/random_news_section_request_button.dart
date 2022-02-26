import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/features/news_sections/presentation/state_notifier/news_sections_state_notifier.dart';

class RandomNewsSectionRequestButton extends ConsumerWidget {
  const RandomNewsSectionRequestButton({
    Key? key,
    required this.message,
  }) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: ref.read(newsSectionsStateProvider.notifier).requestNewsSections,
      child: Text(message),
    );
  }
}
