import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_app_template/packages/entity/data_error.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState<T> with _$ViewState<T> {
  const ViewState._();
  
  const factory ViewState.initial() = _Initial;
  const factory ViewState.loading({T? data}) = _Loading;
  const factory ViewState.success(T data) = _Success;
  const factory ViewState.failure(DataError error, {T? data}) = _Failure;

  T? get dataOrNull => whenOrNull<T?>(
        loading: (data) => data,
        success: (data) => data,
        failure: (_, data) => data,
      );
}
