import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/features/sample_feature/data/repository/default_sample_feature_repository.dart';
import 'package:template_app/src/features/sample_feature/domain/entity/feature_object.dart';
import 'package:template_app/src/features/sample_feature/domain/repository/sample_feature_repository.dart';

final randomFeatureObjectStateProvider = StateNotifierProvider<RandomFeatureObjectStateNotifier, ViewState<FeatureObject, Object>>((ref) {
  return RandomFeatureObjectStateNotifier(
    repository: ref.watch(sampleFeatureRepositoryProvider),
  );
});

class RandomFeatureObjectStateNotifier extends StateNotifier<ViewState<FeatureObject, Object>> {
  RandomFeatureObjectStateNotifier({
    required this.repository,
  }) : super(const ViewState.initial()) {
    randomize();
  }
  final SampleFeatureRepository repository;
  FeatureObject? _lastData;

  void randomize() async {
    state = const ViewState.loading();
    try {
      final data = await repository.getRandomFeatureObject();
      _lastData = data;
      state = ViewState.data(data);
    } catch (e) {
      state = ViewState.error(e, _lastData);
    }
  }
}
