import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/generated/l10n.dart';
import 'package:template_app/src/core/ui/default_loading_widget.dart';
import 'package:template_app/src/core/state/default_state_listener.dart';
import 'package:template_app/src/core/persistence/default_token_storage.dart';
import 'package:template_app/src/features/auth/presentation/state_notifier/auth_state_notifier.dart';
import 'package:template_app/src/features/auth/presentation/ui/auth_page.dart';
import 'package:template_app/src/features/auth/presentation/ui/widgets/logout_button.dart';
import 'package:template_app/src/features/news_sections/domain/entity/news_section.dart';
import 'package:template_app/src/features/news_sections/presentation/state_notifier/news_sections_state_notifier.dart';
import 'package:template_app/src/features/news_sections/presentation/ui/widgets/random_news_section_request_button.dart';

class NewsSectionsPage extends StatelessWidget with DefaultStateListener {
  const NewsSectionsPage({Key? key}) : super(key: key);
  static const routeName = '/news_sections';

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
                provider: newsSectionsStateProvider,
              );

              // Listens auth states
              listenStates(
                context: context,
                ref: ref,
                provider: authStateProvider,
                enableErrorPopups: false,
                onData: (_) => Navigator.of(context).restorablePushNamedAndRemoveUntil(AuthPage.routeName, (route) => false),
              );

              // Builds state widget
              return ref.watch(newsSectionsStateProvider).when<Widget>(
                    initial: () => Container(),
                    loading: () => const DefaultLoadingWidget(),
                    data: (data) => _buildData(context, ref, data),
                    error: (error, lastData) => (lastData != null) ? _buildData(context, ref, lastData) : _buildError(context, error),
                  );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildData(BuildContext context, WidgetRef ref, List<NewsSection> data) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i) => Text('News section (ID: ${data[i].id})'),
          ),
        ),
        RandomNewsSectionRequestButton(message: S.of(context).randomize),
        const LogoutButton(),
        ElevatedButton(
          onPressed: () => ref.read(tokenStorageProvider).clear(),
          child: const Text('Clear storage'),
        ),
      ],
    );
  }

  Widget _buildError(BuildContext context, Object error) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          defineErrorMessage(context, error),
          textAlign: TextAlign.center,
        ),
        RandomNewsSectionRequestButton(message: S.of(context).tryAgain),
        const LogoutButton(),
      ],
    );
  }
}
