import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/generated/l10n.dart';
import 'package:template_app/src/app/routing/app_router.dart';
import 'package:template_app/src/core/widgets/default_loading_widget.dart';
import 'package:template_app/src/core/state/default_state_listener.dart';
import 'package:template_app/src/features/auth/presentation/state_notifier/auth_state_notifier.dart';

class AuthPage extends StatelessWidget with DefaultStateListener {
  const AuthPage({Key? key}) : super(key: key);
  static const routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Consumer(
            builder: (_, ref, __) {
              // Listens states
              listenStates(
                context: context,
                ref: ref,
                provider: authStateProvider,
                onData: (_) => AutoRouter.of(context).pushAndPopUntil(const HomeRoute(), predicate: (_) => false),
              );

              // Builds state widget
              return ref.watch(authStateProvider).when(
                    loading: (_) => const DefaultLoadingWidget(),
                    data: (_) => const DefaultLoadingWidget(),
                    error: (_, __) => ElevatedButton(
                      child: Text(S.of(context).authorize),
                      onPressed: ref.read(authStateProvider.notifier).login,
                    ),
                    initial: () => ElevatedButton(
                      child: Text(S.of(context).authorize),
                      onPressed: ref.read(authStateProvider.notifier).login,
                    ),
                  );
            },
          ),
        ),
      ),
    );
  }
}
