import 'package:chopper/chopper.dart';
import 'package:template_app/src/core/network/converter/json_serializable_converter.dart';
import 'package:template_app/src/features/sample_feature/data/network/dto/feature_object_dto.dart';
import 'package:template_app/src/features/sample_feature/data/network/service/sample_feature_service_api.dart';

part 'sample_feature_service.chopper.dart';

@ChopperApi()
abstract class SampleFeatureService extends ChopperService implements SampleFeatureServiceApi {
  SampleFeatureService();

  factory SampleFeatureService.create({required ChopperClient client}) => _$SampleFeatureService(client);

  factory SampleFeatureService.createDefault() {
    final client = ChopperClient(
      baseUrl: 'https://zoo-animal-api.herokuapp.com',
      services: [_$SampleFeatureService()],
      interceptors: [HttpLoggingInterceptor()],
      converter: const JsonSerializableConverter(
        factories: {
          FeatureObjectDTO: FeatureObjectDTO.fromJson,
        },
      ),
    );

    return _$SampleFeatureService(client);
  }

  @override
  @Get(path: '/animals/rand')
  Future<Response<FeatureObjectDTO>> getRandomFeatureObject();
}
