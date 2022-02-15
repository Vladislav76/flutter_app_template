import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/generated/l10n.dart';
import 'package:template_app/src/features/sample_feature/presentation/provider/random_entity_provider.dart';

class RandomEntityRequestButton extends ConsumerWidget {
  const RandomEntityRequestButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () => ref.refresh(randomEntityProvider),
      child: Text(S.of(context).randomize),
    );
  }
}
