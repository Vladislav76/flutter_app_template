import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:template_app/src/core/persistence/token_storage.dart';

class DefaultAuthenticator implements Authenticator {
  const DefaultAuthenticator({required this.tokenStorage});
  final TokenStorage tokenStorage;

  @override
  FutureOr<Request?> authenticate(Request request, Response response, [Request? originalRequest]) async {
    if (response.statusCode == 403) {
      await tokenStorage.writeAuthorizationToken('9b8fb0d3-347e-421b-a984-e6e6937a4fcd');

      return request;
    }

    return null;
  }
}
