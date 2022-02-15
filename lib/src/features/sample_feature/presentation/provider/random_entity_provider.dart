import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/features/sample_feature/data/repository/default_sample_feature_repository.dart';
import 'package:template_app/src/features/sample_feature/domain/entity/entity.dart';

final randomEntityProvider = FutureProvider<Entity>((ref) {
  final repository = ref.watch(sampleFeatureRepositoryProvider);
  return repository.getRandomEntity();
});
