import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:template_app/src/core/error/network_error.dart';

class DefaultErrorConverter implements ErrorConverter {
  const DefaultErrorConverter();

  @override
  FutureOr<Response> convertError<BodyType, InnerType>(Response response) {
    switch (response.statusCode) {
      case 400:
        throw const NetworkError.badRequest();
      case 401:
        throw const NetworkError.unathorized();
      case 404:
        throw const NetworkError.notFound();
      default:
        throw const NetworkError.unknown();
    }
  }
}
