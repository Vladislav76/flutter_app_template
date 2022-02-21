import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/generated/l10n.dart';
import 'package:template_app/src/core/persistence/default_token_storage.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/features/auth/presentation/state_notifier/auth_state_notifier.dart';
import 'package:template_app/src/features/auth/presentation/ui/auth_page.dart';
import 'package:template_app/src/features/auth/presentation/ui/widgets/logout_button.dart';
import 'package:template_app/src/features/news_sections/domain/entity/news_section.dart';
import 'package:template_app/src/features/news_sections/presentation/state_notifier/random_news_section_state_notifier.dart';
import 'package:template_app/src/features/news_sections/presentation/ui/widgets/random_news_section_request_button.dart';

class NewsSectionsPage extends StatelessWidget {
  const NewsSectionsPage({Key? key}) : super(key: key);
  static const routeName = '/news_sections';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Consumer(
            builder: (_, ref, __) {
              // Listens errors
              ref.listen<ViewState<NewsSection, Object>>(
                randomNewsSectionStateProvider,
                (_, state) {
                  state.whenOrNull(
                    error: (e, _) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e'))),
                  );
                },
              );

              // Listens auth state
              ref.listen<ViewState<void, Object>>(authStateProvider, (_, state) {
                state.whenOrNull(
                  data: (_) => Navigator.of(context).restorablePushNamedAndRemoveUntil(AuthPage.routeName, (route) => false),
                );
              });

              // Builds state widget
              final state = ref.watch(randomNewsSectionStateProvider);

              return state.when<Widget>(
                initial: () => Container(),
                loading: () => const CircularProgressIndicator(),
                data: (data) => _buildData(context, ref, data),
                error: (error, lastData) => (lastData != null) ? _buildData(context, ref, lastData) : _buildError(context, error),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildData(BuildContext context, WidgetRef ref, NewsSection data) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Random entity (ID: ${data.id})'),
        RandomNewsSectionRequestButton(message: S.of(context).randomize),
        const LogoutButton(),
        ElevatedButton(
          onPressed: () => ref.read(tokenStorageProvider).writeAuthorizationToken('fake-token'),
          child: const Text('Clear storage'),
        ),
      ],
    );
  }

  Widget _buildError(BuildContext context, Object error) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Error: $error'),
        RandomNewsSectionRequestButton(message: S.of(context).tryAgain),
      ],
    );
  }
}
