import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/features/app/ui/app.dart';
import 'package:flutter_app_template/locator.dart';
import 'package:flutter_app_template/packages/theme_switcher/theme_switcher.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logging/logging.dart';

void main() async {
  // Setup logging
  if (kReleaseMode) {
    Logger.root.level = Level.WARNING;
  }
  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: '
        '${record.loggerName}'
        '${record.message}');
  });

  WidgetsFlutterBinding.ensureInitialized();

  // Initialize service locator
  initLocator();

  // Prepare Hive database
  await Hive.initFlutter();
  // NOTE: register here all your data adapters
  // Hive.registerAdapter(NewsSectionDTOAdapter());
  // NOTE: open here all your data boxes
  // final newsSectionBox = await Hive.openBox<NewsSectionDTO>('news_sections');

  // Initialize custom theming
  final themeSwitchingData = await initThemeSwitching();
  locator.registerLazySingleton(() => themeSwitchingData.themeControllerProvider);

  // NOTE: use this object to override providers' values
  final providerContainer = ProviderContainer(
    parent: themeSwitchingData.providerContainer,
    overrides: [
      // NOTE: override here all providers with data which initialization is asynchronous
      // newsSectionBoxProvider.overrideWithValue(newsSectionBox),
    ],
  );

  // Build feature dependencies
  // await AuthFeatureDependencies.build();

  // Run the app and pass provider container.
  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: const App(),
    ),
  );
}
