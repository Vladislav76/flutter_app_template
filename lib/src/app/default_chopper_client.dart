import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/network/converter/default_error_converter.dart';
import 'package:template_app/src/core/network/converter/json_serializable_converter.dart';
import 'package:template_app/src/core/network/interceptor/default_authenticator.dart';
import 'package:template_app/src/core/network/interceptor/substitute_auth_token_interceptor.dart';
import 'package:template_app/src/core/persistence/default_token_storage.dart';
import 'package:template_app/src/features/auth/data/network/service/demo_auth_service.dart';
import 'package:template_app/src/features/news_sections/data/network/dto/news_section_dto.dart';
import 'package:template_app/src/features/news_sections/data/network/dto/news_section_response_dto.dart';

final chopperClientProvider = Provider<ChopperClient>((ref) {
  final refreshTokenClient = ChopperClient(
    baseUrl: 'https://content.guardianapis.com',
    interceptors: [
      HttpLoggingInterceptor(),
    ],
  );
  final authService = DemoAuthService.create(client: refreshTokenClient);

  return ChopperClient(
    baseUrl: 'https://content.guardianapis.com',
    interceptors: [
      SubstituteAuthTokenInterceptor(tokenStorage: ref.read(tokenStorageProvider)),
      HttpLoggingInterceptor(),
    ],
    authenticator: DefaultAuthenticator(
      refreshToken: authService.refreshToken,
      tokenStorage: ref.read(tokenStorageProvider),
    ),
    converter: const JsonSerializableConverter(
      factories: {
        NewsSectionResponseDTO: NewsSectionResponseDTO.fromJson,
        NewsSectionDTO: NewsSectionDTO.fromJson,
      },
    ),
    errorConverter: const DefaultErrorConverter(),
  );
});
