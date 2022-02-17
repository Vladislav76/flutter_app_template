import 'package:template_app/src/core/utils/data_mapper.dart';
import 'package:template_app/src/features/sample_feature/data/network/dto/feature_object_dto.dart';
import 'package:template_app/src/features/sample_feature/domain/entity/feature_object.dart';

class FeatureObjectDTOMapper implements DataMapper<FeatureObjectDTO, FeatureObject> {
  const FeatureObjectDTOMapper();

  @override
  FeatureObject map(data) => FeatureObject(id: data.id);
}
