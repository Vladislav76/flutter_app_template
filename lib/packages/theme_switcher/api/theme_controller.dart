import 'package:flutter/foundation.dart';
import 'package:flutter_app_template/packages/design/theme/custom_theme_mode.dart';
import 'package:flutter_app_template/packages/theme_switcher/api/theme_interactor.dart';

class ThemeController with ChangeNotifier {
  ThemeController({
    required ThemeInteractor interactor,
  }) : _interactor = interactor;

  final ThemeInteractor _interactor;
  late CustomThemeMode _themeMode;

  CustomThemeMode get themeMode => _themeMode;

  Future<void> loadTheme() async {
    _themeMode = await _interactor.getThemeMode();
    notifyListeners();
  }

  Future<void> updateThemeMode(CustomThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;
    if (newThemeMode == _themeMode) return;

    _themeMode = newThemeMode;
    notifyListeners();
    await _interactor.updateThemeMode(newThemeMode);
  }
}
