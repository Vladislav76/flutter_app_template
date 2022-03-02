import 'package:flutter/material.dart';

abstract class SettingsStorage {
  Future<ThemeMode?> readThemeMode();
  Future<void> writeThemeMode(ThemeMode mode);
  Future<void> clear();
}
