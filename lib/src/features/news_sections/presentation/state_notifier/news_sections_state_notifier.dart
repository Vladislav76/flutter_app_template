import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/state/default_state_notifier.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/core/utils/either.dart';
import 'package:template_app/src/features/auth/presentation/state_notifier/auth_state_notifier.dart';
import 'package:template_app/src/features/news_sections/data/repository/default_news_section_repository.dart';
import 'package:template_app/src/features/news_sections/domain/entity/news_section.dart';
import 'package:template_app/src/features/news_sections/domain/repository/news_section_repository.dart';

final newsSectionsStateProvider = StateNotifierProvider.autoDispose<NewsSectionsStateNotifier, ViewState<List<NewsSection>, Object>>((ref) {
  return NewsSectionsStateNotifier(
    repository: ref.read(newsSectionRepositoryProvider),
    authStateNotifierRef: ref,
  );
});

class NewsSectionsStateNotifier extends DefaultStateNotifier<List<NewsSection>> {
  NewsSectionsStateNotifier({
    required this.repository,
    required this.authStateNotifierRef,
  }) {
    authStateNotifierRef.listen<ViewState<void, Object>>(
      authStateProvider,
      (_, authState) => authState.whenOrNull(
        loading: (_) => state = const ViewState.loading(),
        error: (e, _) => state = ViewState.error(e, lastData: lastData),
      ),
    );
    _subscription = repository.newsSectionsStream.listen((event) {
      state = event.when(
        left: (error) => ViewState.error(error, lastData: lastData),
        right: (data) {
          lastData = data;

          return ViewState.data(data);
        },
      );
    });
    update();
  }
  final NewsSectionRepository repository;
  final AutoDisposeStateNotifierProviderRef authStateNotifierRef;
  late final StreamSubscription<Either<Object, List<NewsSection>>> _subscription;

  Future<void> update() async {
    state = ViewState.loading(lastData: lastData);
    await repository.requestNewsSections();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
