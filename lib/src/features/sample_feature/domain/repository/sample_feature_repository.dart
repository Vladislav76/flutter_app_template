import 'package:template_app/src/features/sample_feature/domain/entity/entity.dart';

abstract class SampleFeatureRepostitory {
  Future<Entity> getRandomEntity();
}