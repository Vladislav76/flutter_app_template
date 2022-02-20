import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/features/news_sections/data/repository/default_news_section_repository.dart';
import 'package:template_app/src/features/news_sections/domain/entity/news_section.dart';
import 'package:template_app/src/features/news_sections/domain/repository/news_section_repository.dart';

final randomNewsSectionStateProvider = StateNotifierProvider<RandomNewsSectionStateNotifier, ViewState<NewsSection, Object>>((ref) {
  return RandomNewsSectionStateNotifier(
    repository: ref.watch(newsSectionRepositoryProvider),
  );
});

class RandomNewsSectionStateNotifier extends StateNotifier<ViewState<NewsSection, Object>> {
  RandomNewsSectionStateNotifier({
    required this.repository,
  }) : super(const ViewState.initial()) {
    randomize();
  }
  final NewsSectionRepository repository;
  NewsSection? _lastData;

  void randomize() async {
    state = const ViewState.loading();
    try {
      final data = await repository.getNewsSections();
      _lastData = data.first;
      state = ViewState.data(data.first);
    } catch (e) {
      state = ViewState.error(e, _lastData);
    }
  }
}
