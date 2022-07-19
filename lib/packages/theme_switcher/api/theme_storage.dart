import 'package:flutter_app_template/packages/design/theme/custom_theme_mode.dart';

abstract class ThemeStorage {
  Future<CustomThemeMode?> readThemeMode();
  Future<void> writeThemeMode(CustomThemeMode mode);
  Future<void> clear();
}
