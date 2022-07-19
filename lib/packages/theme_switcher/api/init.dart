import 'package:flutter_app_template/packages/theme_switcher/api/theme_controller.dart';
import 'package:flutter_app_template/packages/theme_switcher/internal/di.dart';
import 'package:flutter_app_template/packages/theme_switcher/internal/theme_storage_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeSwitchingData {
  const ThemeSwitchingData({
    required this.providerContainer,
    required this.themeControllerProvider,
  });

  final ProviderContainer providerContainer;
  final ChangeNotifierProvider<ThemeController> themeControllerProvider;
}

Future<ThemeSwitchingData> initThemeSwitching({ProviderContainer? parent}) async {
  // Prepare theme storage.
  final themeStorage = await ThemeStorageImpl.createStorage();

  // Create provider container and override value of theme storage provider.
  final providerContainer = ProviderContainer(
    parent: parent,
    overrides: [
      themeStorageProvider.overrideWithValue(themeStorage),
    ],
  );

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  final themeController = providerContainer.read(themeControllerProvider);
  await themeController.loadTheme();

  return ThemeSwitchingData(
    providerContainer: providerContainer,
    themeControllerProvider: themeControllerProvider,
  );
}
