import 'package:flutter_app_template/packages/design/color/color_palette.dart';
import 'package:flutter_app_template/packages/design/color/design_colors.dart';
import 'package:flutter_app_template/packages/design/theme/custom_theme_mode.dart';

class CustomThemeData {
  const CustomThemeData({
    required this.colorPalette,
  });

  const CustomThemeData.light()
      : colorPalette = const ColorPalette(
          background: DesignColors.white,
        );

  const CustomThemeData.dark()
      : colorPalette = const ColorPalette(
          background: DesignColors.black,
        );

  factory CustomThemeData.fromThemeMode(CustomThemeMode mode) {
    switch (mode) {
      case CustomThemeMode.light:
        return const CustomThemeData.light();
      case CustomThemeMode.dark:
        return const CustomThemeData.dark();
    }
  }

  final ColorPalette colorPalette;
}
