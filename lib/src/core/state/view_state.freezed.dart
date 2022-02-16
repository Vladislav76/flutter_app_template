// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ViewStateTearOff {
  const _$ViewStateTearOff();

  InitialViewState<T, E> initial<T, E>() {
    return InitialViewState<T, E>();
  }

  LoadingViewState<T, E> loading<T, E>() {
    return LoadingViewState<T, E>();
  }

  DataViewState<T, E> data<T, E>(T data) {
    return DataViewState<T, E>(
      data,
    );
  }

  ErrorViewState<T, E> error<T, E>(E error, T? lastData) {
    return ErrorViewState<T, E>(
      error,
      lastData,
    );
  }
}

/// @nodoc
const $ViewState = _$ViewStateTearOff();

/// @nodoc
mixin _$ViewState<T, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(E error, T? lastData) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(E error, T? lastData)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(E error, T? lastData)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialViewState<T, E> value) initial,
    required TResult Function(LoadingViewState<T, E> value) loading,
    required TResult Function(DataViewState<T, E> value) data,
    required TResult Function(ErrorViewState<T, E> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialViewState<T, E> value)? initial,
    TResult Function(LoadingViewState<T, E> value)? loading,
    TResult Function(DataViewState<T, E> value)? data,
    TResult Function(ErrorViewState<T, E> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialViewState<T, E> value)? initial,
    TResult Function(LoadingViewState<T, E> value)? loading,
    TResult Function(DataViewState<T, E> value)? data,
    TResult Function(ErrorViewState<T, E> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStateCopyWith<T, E, $Res> {
  factory $ViewStateCopyWith(
          ViewState<T, E> value, $Res Function(ViewState<T, E>) then) =
      _$ViewStateCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class _$ViewStateCopyWithImpl<T, E, $Res>
    implements $ViewStateCopyWith<T, E, $Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  final ViewState<T, E> _value;
  // ignore: unused_field
  final $Res Function(ViewState<T, E>) _then;
}

/// @nodoc
abstract class $InitialViewStateCopyWith<T, E, $Res> {
  factory $InitialViewStateCopyWith(InitialViewState<T, E> value,
          $Res Function(InitialViewState<T, E>) then) =
      _$InitialViewStateCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class _$InitialViewStateCopyWithImpl<T, E, $Res>
    extends _$ViewStateCopyWithImpl<T, E, $Res>
    implements $InitialViewStateCopyWith<T, E, $Res> {
  _$InitialViewStateCopyWithImpl(InitialViewState<T, E> _value,
      $Res Function(InitialViewState<T, E>) _then)
      : super(_value, (v) => _then(v as InitialViewState<T, E>));

  @override
  InitialViewState<T, E> get _value => super._value as InitialViewState<T, E>;
}

/// @nodoc

class _$InitialViewState<T, E> implements InitialViewState<T, E> {
  const _$InitialViewState();

  @override
  String toString() {
    return 'ViewState<$T, $E>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialViewState<T, E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(E error, T? lastData) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(E error, T? lastData)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(E error, T? lastData)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialViewState<T, E> value) initial,
    required TResult Function(LoadingViewState<T, E> value) loading,
    required TResult Function(DataViewState<T, E> value) data,
    required TResult Function(ErrorViewState<T, E> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialViewState<T, E> value)? initial,
    TResult Function(LoadingViewState<T, E> value)? loading,
    TResult Function(DataViewState<T, E> value)? data,
    TResult Function(ErrorViewState<T, E> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialViewState<T, E> value)? initial,
    TResult Function(LoadingViewState<T, E> value)? loading,
    TResult Function(DataViewState<T, E> value)? data,
    TResult Function(ErrorViewState<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialViewState<T, E> implements ViewState<T, E> {
  const factory InitialViewState() = _$InitialViewState<T, E>;
}

/// @nodoc
abstract class $LoadingViewStateCopyWith<T, E, $Res> {
  factory $LoadingViewStateCopyWith(LoadingViewState<T, E> value,
          $Res Function(LoadingViewState<T, E>) then) =
      _$LoadingViewStateCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class _$LoadingViewStateCopyWithImpl<T, E, $Res>
    extends _$ViewStateCopyWithImpl<T, E, $Res>
    implements $LoadingViewStateCopyWith<T, E, $Res> {
  _$LoadingViewStateCopyWithImpl(LoadingViewState<T, E> _value,
      $Res Function(LoadingViewState<T, E>) _then)
      : super(_value, (v) => _then(v as LoadingViewState<T, E>));

  @override
  LoadingViewState<T, E> get _value => super._value as LoadingViewState<T, E>;
}

/// @nodoc

class _$LoadingViewState<T, E> implements LoadingViewState<T, E> {
  const _$LoadingViewState();

  @override
  String toString() {
    return 'ViewState<$T, $E>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingViewState<T, E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(E error, T? lastData) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(E error, T? lastData)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(E error, T? lastData)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialViewState<T, E> value) initial,
    required TResult Function(LoadingViewState<T, E> value) loading,
    required TResult Function(DataViewState<T, E> value) data,
    required TResult Function(ErrorViewState<T, E> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialViewState<T, E> value)? initial,
    TResult Function(LoadingViewState<T, E> value)? loading,
    TResult Function(DataViewState<T, E> value)? data,
    TResult Function(ErrorViewState<T, E> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialViewState<T, E> value)? initial,
    TResult Function(LoadingViewState<T, E> value)? loading,
    TResult Function(DataViewState<T, E> value)? data,
    TResult Function(ErrorViewState<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingViewState<T, E> implements ViewState<T, E> {
  const factory LoadingViewState() = _$LoadingViewState<T, E>;
}

/// @nodoc
abstract class $DataViewStateCopyWith<T, E, $Res> {
  factory $DataViewStateCopyWith(
          DataViewState<T, E> value, $Res Function(DataViewState<T, E>) then) =
      _$DataViewStateCopyWithImpl<T, E, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$DataViewStateCopyWithImpl<T, E, $Res>
    extends _$ViewStateCopyWithImpl<T, E, $Res>
    implements $DataViewStateCopyWith<T, E, $Res> {
  _$DataViewStateCopyWithImpl(
      DataViewState<T, E> _value, $Res Function(DataViewState<T, E>) _then)
      : super(_value, (v) => _then(v as DataViewState<T, E>));

  @override
  DataViewState<T, E> get _value => super._value as DataViewState<T, E>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(DataViewState<T, E>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DataViewState<T, E> implements DataViewState<T, E> {
  const _$DataViewState(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ViewState<$T, $E>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataViewState<T, E> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $DataViewStateCopyWith<T, E, DataViewState<T, E>> get copyWith =>
      _$DataViewStateCopyWithImpl<T, E, DataViewState<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(E error, T? lastData) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(E error, T? lastData)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(E error, T? lastData)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialViewState<T, E> value) initial,
    required TResult Function(LoadingViewState<T, E> value) loading,
    required TResult Function(DataViewState<T, E> value) data,
    required TResult Function(ErrorViewState<T, E> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialViewState<T, E> value)? initial,
    TResult Function(LoadingViewState<T, E> value)? loading,
    TResult Function(DataViewState<T, E> value)? data,
    TResult Function(ErrorViewState<T, E> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialViewState<T, E> value)? initial,
    TResult Function(LoadingViewState<T, E> value)? loading,
    TResult Function(DataViewState<T, E> value)? data,
    TResult Function(ErrorViewState<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataViewState<T, E> implements ViewState<T, E> {
  const factory DataViewState(T data) = _$DataViewState<T, E>;

  T get data;
  @JsonKey(ignore: true)
  $DataViewStateCopyWith<T, E, DataViewState<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorViewStateCopyWith<T, E, $Res> {
  factory $ErrorViewStateCopyWith(ErrorViewState<T, E> value,
          $Res Function(ErrorViewState<T, E>) then) =
      _$ErrorViewStateCopyWithImpl<T, E, $Res>;
  $Res call({E error, T? lastData});
}

/// @nodoc
class _$ErrorViewStateCopyWithImpl<T, E, $Res>
    extends _$ViewStateCopyWithImpl<T, E, $Res>
    implements $ErrorViewStateCopyWith<T, E, $Res> {
  _$ErrorViewStateCopyWithImpl(
      ErrorViewState<T, E> _value, $Res Function(ErrorViewState<T, E>) _then)
      : super(_value, (v) => _then(v as ErrorViewState<T, E>));

  @override
  ErrorViewState<T, E> get _value => super._value as ErrorViewState<T, E>;

  @override
  $Res call({
    Object? error = freezed,
    Object? lastData = freezed,
  }) {
    return _then(ErrorViewState<T, E>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
      lastData == freezed
          ? _value.lastData
          : lastData // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ErrorViewState<T, E> implements ErrorViewState<T, E> {
  const _$ErrorViewState(this.error, this.lastData);

  @override
  final E error;
  @override
  final T? lastData;

  @override
  String toString() {
    return 'ViewState<$T, $E>.error(error: $error, lastData: $lastData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorViewState<T, E> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.lastData, lastData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(lastData));

  @JsonKey(ignore: true)
  @override
  $ErrorViewStateCopyWith<T, E, ErrorViewState<T, E>> get copyWith =>
      _$ErrorViewStateCopyWithImpl<T, E, ErrorViewState<T, E>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(E error, T? lastData) error,
  }) {
    return error(this.error, lastData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(E error, T? lastData)? error,
  }) {
    return error?.call(this.error, lastData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(E error, T? lastData)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, lastData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialViewState<T, E> value) initial,
    required TResult Function(LoadingViewState<T, E> value) loading,
    required TResult Function(DataViewState<T, E> value) data,
    required TResult Function(ErrorViewState<T, E> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialViewState<T, E> value)? initial,
    TResult Function(LoadingViewState<T, E> value)? loading,
    TResult Function(DataViewState<T, E> value)? data,
    TResult Function(ErrorViewState<T, E> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialViewState<T, E> value)? initial,
    TResult Function(LoadingViewState<T, E> value)? loading,
    TResult Function(DataViewState<T, E> value)? data,
    TResult Function(ErrorViewState<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorViewState<T, E> implements ViewState<T, E> {
  const factory ErrorViewState(E error, T? lastData) = _$ErrorViewState<T, E>;

  E get error;
  T? get lastData;
  @JsonKey(ignore: true)
  $ErrorViewStateCopyWith<T, E, ErrorViewState<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
