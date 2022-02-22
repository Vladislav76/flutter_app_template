import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState<T, E> with _$ViewState<T, E> {
  static const void voidValue = {};

  const factory ViewState.initial() = _Initial;
  const factory ViewState.loading() = _Loading;
  const factory ViewState.data(T data) = _Data;
  const factory ViewState.error(E error, {T? lastData}) = _Error;
}
