import 'package:flutter/material.dart';
import 'package:flutter_app_template/packages/design/theme/custom_theme_mode.dart';
import 'package:flutter_app_template/packages/theme_switcher/internal/di.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(themeControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: DropdownButton<CustomThemeMode>(
        value: controller.themeMode,
        onChanged: controller.updateThemeMode,
        items: const [
          // TODO: localize
          DropdownMenuItem(
            value: CustomThemeMode.light,
            child: Text('Light Theme'),
          ),
          DropdownMenuItem(
            value: CustomThemeMode.dark,
            child: Text('Dark Theme'),
          ),
        ],
      ),
    );
  }
}
