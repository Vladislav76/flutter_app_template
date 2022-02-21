import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/features/auth/presentation/ui/auth_page.dart';
import 'package:template_app/src/features/news_sections/presentation/ui/news_sections_page.dart';
import 'package:template_app/src/features/splash/presentation/state_notifier/initial_app_state_notifier.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Consumer(
            builder: (_, ref, __) {
              // Listens states
              ref.listen<ViewState<bool, Object>>(
                initialAppStateProvider,
                (_, state) => state.whenOrNull(
                  data: (isLoggedIn) => Navigator.of(context).restorablePushReplacementNamed(isLoggedIn ? NewsSectionsPage.routeName : AuthPage.routeName),
                  error: (e, _) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
                    Navigator.of(context).restorablePushReplacementNamed(AuthPage.routeName);

                    return;
                  },
                ),
              );

              return const Text('Splash page');
            },
          ),
        ),
      ),
    );
  }
}
