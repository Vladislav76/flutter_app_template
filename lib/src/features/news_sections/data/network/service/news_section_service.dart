import 'package:chopper/chopper.dart';
import 'package:template_app/src/core/network/converter/json_serializable_converter.dart';
import 'package:template_app/src/core/network/converter/default_error_converter.dart';
import 'package:template_app/src/core/network/interceptor/default_authenticator.dart';
import 'package:template_app/src/core/network/interceptor/substitute_auth_token_interceptor.dart';
import 'package:template_app/src/core/persistence/default_token_storage.dart';
import 'package:template_app/src/core/persistence/token_storage.dart';
import 'package:template_app/src/features/news_sections/data/network/dto/news_section_dto.dart';
import 'package:template_app/src/features/news_sections/data/network/dto/news_section_response_dto.dart';
import 'package:template_app/src/features/news_sections/data/network/service/news_section_service_api.dart';

part 'news_section_service.chopper.dart';

@ChopperApi()
abstract class NewsSectionService extends ChopperService implements NewsSectionServiceApi {
  NewsSectionService();

  factory NewsSectionService.create({required TokenStorage tokenStorage}) {
    final client = ChopperClient(
      baseUrl: 'https://content.guardianapis.com',
      services: [_$NewsSectionService()],
      interceptors: [
        SubstituteAuthTokenInterceptor(tokenStorage: tokenStorage),
        HttpLoggingInterceptor(),
      ],
      converter: const JsonSerializableConverter(
        factories: {
          NewsSectionResponseDTO: NewsSectionResponseDTO.fromJson,
          NewsSectionDTO: NewsSectionDTO.fromJson,
        },
      ),
      errorConverter: const DefaultErrorConverter(),
      authenticator: DefaultAuthenticator(tokenStorage: tokenStorage),
    );

    return _$NewsSectionService(client);
  }

  @override
  @Get(path: '/sections')
  Future<Response<NewsSectionResponseDTO>> getNewsSections();
}
