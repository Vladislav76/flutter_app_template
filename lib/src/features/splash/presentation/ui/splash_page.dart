import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/app/routing/app_router.gr.dart';
import 'package:template_app/src/core/state/default_state_listener.dart';
import 'package:template_app/src/features/splash/presentation/state_notifier/initial_app_state_notifier.dart';

class SplashPage extends StatelessWidget with DefaultStateListener {
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
              listenStates<bool>(
                context: context,
                ref: ref,
                provider: initialAppStateProvider,
                onError: (_) => AutoRouter.of(context).replace(const AuthRoute()),
                onData: (isLoggedIn) => AutoRouter.of(context).replace(isLoggedIn ? const HomeRoute() : const AuthRoute()),
              );

              return const Text('Splash page');
            },
          ),
        ),
      ),
    );
  }
}
