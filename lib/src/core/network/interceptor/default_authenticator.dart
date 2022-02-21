import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:template_app/src/core/persistence/token_storage.dart';

class DefaultAuthenticator implements Authenticator {
  const DefaultAuthenticator({
    required this.refreshToken,
    required this.tokenStorage,
  });
  final Future<Response<String>> Function() refreshToken;
  final TokenStorage tokenStorage;

  @override
  FutureOr<Request?> authenticate(Request request, Response response, [Request? originalRequest]) async {
    if (response.statusCode == 403) {
      final _response = await refreshToken();
      final authToken = _response.body;
      if (authToken != null) {
        await tokenStorage.writeAuthorizationToken(authToken);

        return request;
      }
    }

    return null;
  }
}
