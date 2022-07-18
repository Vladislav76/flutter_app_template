import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_error.freezed.dart';

@Freezed()
class NetworkError with _$NetworkError {
  const factory NetworkError.noInternetConnection() = _NoInternetConnection;
  const factory NetworkError.badRequest() = _BadRequest;
  const factory NetworkError.unathorized() = _Unathorized;
  const factory NetworkError.notFound() = _NotFound;
  const factory NetworkError.other(int responseCode) = _Other;
}
