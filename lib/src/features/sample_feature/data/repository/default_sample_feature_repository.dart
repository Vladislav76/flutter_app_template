import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/features/sample_feature/data/mapping/model_mapper.dart';
import 'package:template_app/src/features/sample_feature/data/network/service/sample_feature_service.dart';
import 'package:template_app/src/features/sample_feature/data/network/service/sample_feature_service_api.dart';
import 'package:template_app/src/features/sample_feature/domain/entity/entity.dart';
import 'package:template_app/src/features/sample_feature/domain/repository/sample_feature_repository.dart';

final sampleFeatureRepositoryProvider = Provider<SampleFeatureRepository>((ref) {
  final service = SampleFeatureService.createDefault();
  
  return DefaultSampleFeatureRepository(service: service);
});

class DefaultSampleFeatureRepository implements SampleFeatureRepository {
  DefaultSampleFeatureRepository({
    required SampleFeatureServiceApi service,
  }) : _service = service;
  final SampleFeatureServiceApi _service;

  @override
  Future<Entity> getRandomEntity() async {
    final response = await _service.getRandomModel();
    final model = response.body;
    if (model == null) throw Exception('Null data fetched from the network');
    
    return const ModelToEntityMapper().map(model);
  }
}
