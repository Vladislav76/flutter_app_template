import 'package:flutter_app_template/packages/theme_switcher/api/theme_controller.dart';
import 'package:flutter_app_template/packages/theme_switcher/api/theme_interactor.dart';
import 'package:flutter_app_template/packages/theme_switcher/api/theme_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// NOTE: please override provider's value (e.g. in the main.dart file)
final themeStorageProvider = Provider<ThemeStorage>(
  (ref) {
    throw 'Provider was not initialized';
  },
);

final themeInteractorProvider = Provider(
  (ref) {
    return ThemeInteractor(
      storage: ref.read(themeStorageProvider),
    );
  },
);

final themeControllerProvider = ChangeNotifierProvider(
  (ref) {
    return ThemeController(
      interactor: ref.read(
        themeInteractorProvider,
      ),
    );
  },
);
