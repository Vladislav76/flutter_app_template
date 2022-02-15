import 'package:template_app/src/core/utils/data_mapper.dart';
import 'package:template_app/src/features/sample_feature/data/network/model/json_serializable_model.dart';
import 'package:template_app/src/features/sample_feature/domain/entity/entity.dart';

class ModelToEntityMapper implements DataMapper<Model, Entity> {
  const ModelToEntityMapper();

  @override
  Entity map(data) => Entity(id: data.id);
}
