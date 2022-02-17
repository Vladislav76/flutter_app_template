import 'package:chopper/chopper.dart';
import 'package:template_app/src/features/sample_feature/data/network/dto/feature_object_dto.dart';

abstract class SampleFeatureServiceApi {
  Future<Response<FeatureObjectDTO>> getRandomFeatureObject();
}
