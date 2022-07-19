import 'package:flutter/material.dart';
import 'package:flutter_app_template/features/skins/domain/entity/skin.dart';
import 'package:flutter_app_template/features/skins/presentation/ui/item/skin_tile.dart';
import 'package:flutter_app_template/locator.dart';
import 'package:flutter_app_template/packages/state/reloadable_view_state_notifier.dart';
import 'package:flutter_app_template/packages/theme_switcher/theme_switcher.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SkinsPage extends ConsumerWidget {
  const SkinsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = locator.get<ReloadableViewStateNotifierProvider<List<Skin>>>();
    final state = ref.watch(provider);
    final skins = state.dataOrNull ?? [];

    return Scaffold(
      body: Column(
        children: [
          const ThemeSwitcher(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, i) => SkinTile(
                entity: skins[i],
              ),
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemCount: skins.length,
            ),
          ),
        ],
      ),
    );
  }
}
