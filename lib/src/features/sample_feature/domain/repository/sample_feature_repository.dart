import 'package:template_app/src/features/sample_feature/domain/entity/feature_object.dart';

abstract class SampleFeatureRepository {
  Future<FeatureObject> getRandomFeatureObject();
}
