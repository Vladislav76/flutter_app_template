import 'package:flutter_app_template/packages/design/theme/custom_theme_mode.dart';
import 'package:flutter_app_template/packages/theme_switcher/api/theme_storage.dart';

class ThemeInteractor {
  const ThemeInteractor({
    required ThemeStorage storage,
  }) : _storage = storage;

  final ThemeStorage _storage;

  Future<CustomThemeMode> getThemeMode() async {
    final theme = await _storage.readThemeMode();
    return theme ?? CustomThemeMode.light;
  }

  Future<void> updateThemeMode(CustomThemeMode mode) async {
    return _storage.writeThemeMode(mode);
  }
}
