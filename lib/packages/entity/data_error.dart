import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_app_template/packages/entity/network_error.dart';

part 'data_error.freezed.dart';

@Freezed()
class DataError with _$DataError {
  const factory DataError.noData() = _NoData;
  const factory DataError.network(NetworkError error) = _Network;
  const factory DataError.custom(Object error) = _Custom;
  const factory DataError.unknown(Object? error, {StackTrace? stackTrace}) = _Unknown;
}
