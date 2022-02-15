import 'package:chopper/chopper.dart';
import 'package:template_app/src/features/sample_feature/data/network/model/json_serializable_model.dart';

abstract class SampleFeatureServiceApi {
  Future<Response<Model>> getRandomModel();
}
