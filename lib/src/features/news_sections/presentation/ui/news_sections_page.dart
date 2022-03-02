import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/settings/settings_panel.dart';
import 'package:template_app/src/core/widgets/default_loading_widget.dart';
import 'package:template_app/src/core/state/default_state_listener.dart';
import 'package:template_app/src/core/persistence/default_token_storage.dart';
import 'package:template_app/src/features/auth/presentation/state_notifier/auth_state_notifier.dart';
import 'package:template_app/src/features/auth/presentation/ui/auth_page.dart';
import 'package:template_app/src/features/auth/presentation/ui/widgets/logout_button.dart';
import 'package:template_app/src/features/auth/presentation/ui/widgets/no_data_placeholder.dart';
import 'package:template_app/src/features/news_sections/domain/entity/news_section.dart';
import 'package:template_app/src/features/news_sections/presentation/state_notifier/news_sections_state_notifier.dart';
import 'package:template_app/src/features/news_sections/presentation/ui/widgets/news_section_list.dart';

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
              // Listen states
              listenStates(
                context: context,
                ref: ref,
                provider: newsSectionsStateProvider,
              );

              // Listen auth states
              listenStates(
                context: context,
                ref: ref,
                provider: authStateProvider,
                enableErrorPopups: false,
                onData: (_) => Navigator.of(context).restorablePushNamedAndRemoveUntil(AuthPage.routeName, (route) => false),
              );

              // Build state widget
              return ref.watch(newsSectionsStateProvider).when<Widget>(
                    initial: () => Container(),
                    loading: (lastData) => (lastData != null && lastData.isNotEmpty) ? _buildData(context, ref, lastData) : const DefaultLoadingWidget(),
                    data: (data) => _buildData(context, ref, data),
                    error: (error, lastData) =>
                        (lastData != null && lastData.isNotEmpty) ? _buildData(context, ref, lastData) : _buildError(context, ref, error),
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
        (data.isNotEmpty)
            ? Expanded(
                child: NewsSectionList(items: data),
              )
            : NoDataPlaceholder(
                onDataRequested: ref.read(newsSectionsStateProvider.notifier).update,
              ),
        const LogoutButton(),
        ElevatedButton(
          onPressed: () => ref.read(tokenStorageProvider).clear(),
          child: const Text('Clear storage'),
        ),
        const SettingsPanel(),
      ],
    );
  }

  Widget _buildError(BuildContext context, WidgetRef ref, Object error) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          defineErrorMessage(context, error),
          textAlign: TextAlign.center,
        ),
        NoDataPlaceholder(
          onDataRequested: ref.read(newsSectionsStateProvider.notifier).update,
        ),
        const LogoutButton(),
      ],
    );
  }
}
