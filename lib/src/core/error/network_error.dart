import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_error.freezed.dart';

@freezed
class NetworkError with _$NetworkError {
  const factory NetworkError.badRequest() = _BadRequest;
  const factory NetworkError.unathorized() = _Unathorized;
  const factory NetworkError.notFound() = _NotFound;
  const factory NetworkError.internetConnection() = _InternetConnection;
  const factory NetworkError.unknown() = _Unknown;
}
