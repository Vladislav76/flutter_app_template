import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_error.freezed.dart';

@freezed
class DataError with _$DataError {
  const factory DataError.unknown() = _Unknown;
}
