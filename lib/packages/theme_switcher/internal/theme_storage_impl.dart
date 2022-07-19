import 'package:flutter_app_template/packages/design/theme/custom_theme_mode.dart';
import 'package:flutter_app_template/packages/theme_switcher/api/theme_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeStorageImpl implements ThemeStorage {
  const ThemeStorageImpl._(this._prefs);

  static const _themeModeKey = 'theme_mode';
  final SharedPreferences _prefs;

  @override
  Future<void> clear() async {
    await _prefs.clear();
  }

  @override
  Future<CustomThemeMode?> readThemeMode() {
    final themeIndex = _prefs.getInt(_themeModeKey);
    return Future.value((themeIndex != null) ? CustomThemeMode.values[themeIndex] : null);
  }

  @override
  Future<void> writeThemeMode(CustomThemeMode mode) async {
    await _prefs.setInt(_themeModeKey, mode.index);
  }

  static Future<ThemeStorageImpl> createStorage() async {
    final prefs = await SharedPreferences.getInstance();
    return ThemeStorageImpl._(prefs);
  }
}
