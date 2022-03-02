import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/settings/default_settings_storage.dart';
import 'package:template_app/src/core/settings/settings_storage.dart';

final settingsServiceProvider = Provider((ref) {
  return SettingsService(
    storage: ref.read(settingsStorageProvider),
  );
});

/// A service that stores and retrieves user settings.
class SettingsService {
  const SettingsService({required this.storage});
  final SettingsStorage storage;

  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async {
    final theme = await storage.readThemeMode();

    return theme ?? ThemeMode.system;
  }

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    return storage.writeThemeMode(theme);
  }
}
