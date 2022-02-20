import 'dart:async';

import 'package:chopper/chopper.dart';

class DefaultErrorConverter implements ErrorConverter {
  const DefaultErrorConverter();

  @override
  FutureOr<Response> convertError<BodyType, InnerType>(Response response) {
    return response;
  }
}
