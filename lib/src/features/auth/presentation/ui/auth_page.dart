import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/generated/l10n.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/features/auth/presentation/state_notifier/auth_state_notifier.dart';
import 'package:template_app/src/features/news_sections/presentation/ui/news_sections_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);
  static const routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Consumer(
            builder: (_, ref, __) {
              // Listens errors & successful login
              ref.listen<ViewState<void, Object>>(
                authStateProvider,
                (_, state) {
                  state.whenOrNull(
                    data: (_) => Navigator.of(context).restorablePushReplacementNamed(NewsSectionsPage.routeName),
                    error: (e, _) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e'))),
                  );
                },
              );
              // Builds state widget
              final state = ref.watch(authStateProvider);

              return state.when(
                loading: () => const CircularProgressIndicator(),
                data: (_) => const CircularProgressIndicator(),
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
