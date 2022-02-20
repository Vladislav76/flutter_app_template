import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:template_app/src/core/persistence/token_storage.dart';

class SubstituteAuthTokenInterceptor implements RequestInterceptor {
  const SubstituteAuthTokenInterceptor({required this.tokenStorage});
  final TokenStorage tokenStorage;

  @override
  FutureOr<Request> onRequest(Request request) async {
    final authToken = await tokenStorage.readAuthorizationToken();

    return request.copyWith(
      parameters: {
        ...request.parameters,
        'api-key': authToken,
      },
    );
  }
}
