import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/features/sample_feature/data/repository/default_sample_feature_repository.dart';
import 'package:template_app/src/features/sample_feature/domain/entity/entity.dart';
import 'package:template_app/src/features/sample_feature/domain/repository/sample_feature_repository.dart';

final randomEntityStateProvider = StateNotifierProvider<RandomEntityStateNotifier, ViewState<Entity, Object>>((ref) {
  return RandomEntityStateNotifier(
    repository: ref.watch(sampleFeatureRepositoryProvider),
  );
});

class RandomEntityStateNotifier extends StateNotifier<ViewState<Entity, Object>> {
  RandomEntityStateNotifier({
    required this.repository,
  }) : super(const ViewState.initial()) {
    randomize();
  }
  final SampleFeatureRepository repository;
  Entity? _lastData;

  void randomize() async {
    state = const ViewState.loading();
    try {
      final data = await repository.getRandomEntity();
      _lastData = data;
      state = ViewState.data(data);
    } catch (e) {
      state = ViewState.error(e, _lastData);
    }
  }
}
