import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logging/logging.dart';

import 'package:template_app/src/app/ui/app.dart';
import 'package:template_app/src/core/settings/default_settings_storage.dart';
import 'package:template_app/src/core/settings/settings_controller.dart';
import 'package:template_app/src/features/news_sections/data/cache/news_section_cache.dart';
import 'package:template_app/src/features/news_sections/data/network/dto/news_section_dto.dart';

void main() async {
  // Show a splash widget while awaiting initialization
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text('Splash page'),
        ),
      ),
    ),
  );

  // Prepare Hive database
  await Hive.initFlutter();
  // NOTE: register here all your data adapters
  Hive.registerAdapter(NewsSectionDTOAdapter());
  // NOTE: open here all your data boxes
  final newsSectionBox = await Hive.openBox<NewsSectionDTO>('news_sections');

  // Prepare settings storage
  final settingsStorage = await DefaultSettingsStorage.initStorage();

  // NOTE: use this object to override providers' values
  final providerContainer = ProviderContainer(
    overrides: [
      // NOTE: override here all providers with data which initialization is asynchronous
      newsSectionBoxProvider.overrideWithValue(newsSectionBox),
      settingsStorageProvider.overrideWithValue(settingsStorage),
    ],
  );

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  final settingsController = providerContainer.read(settingsControllerProvider);
  await settingsController.loadSettings();

  // Prepare logging system
  _setupLogging();

  // Run the app and pass provider container.
  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: const App(),
    ),
  );
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    debugPrint('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
