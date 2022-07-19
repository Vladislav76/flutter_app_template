import 'package:flutter/material.dart';
import 'package:flutter_app_template/assets/strings/l10n.dart';
import 'package:flutter_app_template/features/navigation/app_router.dart';
import 'package:flutter_app_template/locator.dart';
import 'package:flutter_app_template/packages/design/theme/custom_theme.dart';
import 'package:flutter_app_template/packages/design/theme/custom_theme_data.dart';
import 'package:flutter_app_template/packages/theme_switcher/theme_switcher.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _appRouter = AppRouter();

class App extends ConsumerWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeController = ref.watch(locator.get<ChangeNotifierProvider<ThemeController>>());

    return AnimatedBuilder(
      animation: themeController,
      builder: (context, child) {
        return CustomTheme(
          data: CustomThemeData.fromThemeMode(themeController.themeMode),
          child: Builder(
            builder: (context) => MaterialApp.router(
              // Providing a restorationScopeId allows the Navigator built by the
              // MaterialApp to restore the navigation stack when a user leaves and
              // returns to the app after it has been killed while running in the
              // background.
              restorationScopeId: 'app_id',

              // Provide the generated localizations (S class) to the MaterialApp. This
              // allows descendant Widgets to display the correct translations
              // depending on the user's locale.
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,

              // Use S class to configure the correct application title
              // depending on the user's locale.
              //
              // The appTitle is defined in .arb files found in the l10n
              // directory.
              onGenerateTitle: (BuildContext context) => S.of(context).appTitle,

              // Define a light and dark color theme. Then, read the user's
              // preferred ThemeMode (light, dark, or system default) from the
              // SettingsController to display the correct theme.
              theme: ThemeData(
                // Define the default brightness and colors.
                brightness: Brightness.light,
                primaryColor: Colors.lightBlue[800],

                // Define the default font family.
                fontFamily: 'Georgia',

                // Define the default `TextTheme`. Use this to specify the default
                // text styling for headlines, titles, bodies of text, and more.
                textTheme: const TextTheme(
                  headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
                  headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
                  bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
                ),
                scaffoldBackgroundColor: CustomTheme.of(context).colorPalette.background,
              ),
              darkTheme: ThemeData(brightness: Brightness.dark),
              // themeMode: themeController.themeMode,

              // Routing arguments
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),
            ),
          ),
        );
      },
    );
  }
}
