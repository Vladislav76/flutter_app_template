import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/settings/settings_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

// NOTE: please override provider's value (e.g. in the main.dart file)
final settingsStorageProvider = Provider<SettingsStorage>((ref) {
  throw 'Provider was not initialized';
});

class DefaultSettingsStorage implements SettingsStorage {
  DefaultSettingsStorage._(this._prefs);
  static const _themeModeKey = 'theme_mode';
  final SharedPreferences _prefs;

  @override
  Future<void> clear() async {
    await _prefs.clear();
  }

  @override
  Future<ThemeMode?> readThemeMode() {
    final themeIndex = _prefs.getInt(_themeModeKey);

    return Future.value((themeIndex != null) ? ThemeMode.values[themeIndex] : null);
  }

  @override
  Future<void> writeThemeMode(ThemeMode mode) async {
    await _prefs.setInt(_themeModeKey, mode.index);
  }

  static Future<DefaultSettingsStorage> initStorage() async {
    final prefs = await SharedPreferences.getInstance();

    return DefaultSettingsStorage._(prefs);
  }
}
