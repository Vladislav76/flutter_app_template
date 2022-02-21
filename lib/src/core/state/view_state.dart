import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState<T, E> with _$ViewState<T, E> {
  static const void voidValue = {};

  const factory ViewState.initial() = InitialViewState;
  const factory ViewState.loading() = LoadingViewState;
  const factory ViewState.data(T data) = DataViewState;
  const factory ViewState.error(E error, {T? lastData}) = ErrorViewState;
}
