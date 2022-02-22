import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/generated/l10n.dart';
import 'package:template_app/src/core/ui/default_loading_widget.dart';
import 'package:template_app/src/core/state/default_state_listener.dart';
import 'package:template_app/src/features/auth/presentation/state_notifier/auth_state_notifier.dart';
import 'package:template_app/src/features/news_sections/presentation/ui/news_sections_page.dart';

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
                onData: (_) => Navigator.of(context).restorablePushReplacementNamed(NewsSectionsPage.routeName),
              );

              // Builds state widget
              return ref.watch(authStateProvider).when(
                    loading: () => const DefaultLoadingWidget(),
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
