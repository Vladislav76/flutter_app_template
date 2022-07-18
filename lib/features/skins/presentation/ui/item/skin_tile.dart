import 'package:flutter/material.dart';
import 'package:flutter_app_template/features/skins/domain/entity/skin.dart';

class SkinTile extends StatelessWidget {
  const SkinTile({
    super.key,
    required this.entity,
  });

  final Skin entity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(entity.name),
        Text(entity.unicodeCharacter),
      ],
    );
  }
}
