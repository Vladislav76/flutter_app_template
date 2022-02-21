import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/architecture/default_state_notifier.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/features/auth/presentation/state_notifier/auth_state_notifier.dart';
import 'package:template_app/src/features/news_sections/data/repository/default_news_section_repository.dart';
import 'package:template_app/src/features/news_sections/domain/entity/news_section.dart';
import 'package:template_app/src/features/news_sections/domain/repository/news_section_repository.dart';

final randomNewsSectionStateProvider = StateNotifierProvider.autoDispose<RandomNewsSectionStateNotifier, ViewState<NewsSection, Object>>((ref) {
  return RandomNewsSectionStateNotifier(
    repository: ref.read(newsSectionRepositoryProvider),
    authStateNotifierRef: ref,
  );
});

class RandomNewsSectionStateNotifier extends DefaultStateNotifier<NewsSection> {
  RandomNewsSectionStateNotifier({
    required this.repository,
    required this.authStateNotifierRef,
  }) {
    authStateNotifierRef.listen<ViewState<void, Object>>(
      authStateProvider,
      (_, authState) => authState.whenOrNull(
        loading: () => state = const ViewState.loading(),
        error: (e, _) => state = ViewState.error(e, lastData: lastData),
      ),
    );
    randomize();
  }
  final NewsSectionRepository repository;
  final AutoDisposeStateNotifierProviderRef authStateNotifierRef;

  void randomize() async {
    tryAction(
      action: () async {
        final data = await repository.getNewsSections();

        return data.first;
      },
    );
  }
}
