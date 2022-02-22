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

  _Initial<T, E> initial<T, E>() {
    return _Initial<T, E>();
  }

  _Loading<T, E> loading<T, E>() {
    return _Loading<T, E>();
  }

  _Data<T, E> data<T, E>(T data) {
    return _Data<T, E>(
      data,
    );
  }

  _Error<T, E> error<T, E>(E error, {T? lastData}) {
    return _Error<T, E>(
      error,
      lastData: lastData,
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
    required TResult Function(_Initial<T, E> value) initial,
    required TResult Function(_Loading<T, E> value) loading,
    required TResult Function(_Data<T, E> value) data,
    required TResult Function(_Error<T, E> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Data<T, E> value)? data,
    TResult Function(_Error<T, E> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Data<T, E> value)? data,
    TResult Function(_Error<T, E> value)? error,
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
abstract class _$InitialCopyWith<T, E, $Res> {
  factory _$InitialCopyWith(
          _Initial<T, E> value, $Res Function(_Initial<T, E>) then) =
      __$InitialCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<T, E, $Res>
    extends _$ViewStateCopyWithImpl<T, E, $Res>
    implements _$InitialCopyWith<T, E, $Res> {
  __$InitialCopyWithImpl(
      _Initial<T, E> _value, $Res Function(_Initial<T, E>) _then)
      : super(_value, (v) => _then(v as _Initial<T, E>));

  @override
  _Initial<T, E> get _value => super._value as _Initial<T, E>;
}

/// @nodoc

class _$_Initial<T, E> implements _Initial<T, E> {
  const _$_Initial();

  @override
  String toString() {
    return 'ViewState<$T, $E>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial<T, E>);
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
    required TResult Function(_Initial<T, E> value) initial,
    required TResult Function(_Loading<T, E> value) loading,
    required TResult Function(_Data<T, E> value) data,
    required TResult Function(_Error<T, E> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Data<T, E> value)? data,
    TResult Function(_Error<T, E> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Data<T, E> value)? data,
    TResult Function(_Error<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T, E> implements ViewState<T, E> {
  const factory _Initial() = _$_Initial<T, E>;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, E, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T, E> value, $Res Function(_Loading<T, E>) then) =
      __$LoadingCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<T, E, $Res>
    extends _$ViewStateCopyWithImpl<T, E, $Res>
    implements _$LoadingCopyWith<T, E, $Res> {
  __$LoadingCopyWithImpl(
      _Loading<T, E> _value, $Res Function(_Loading<T, E>) _then)
      : super(_value, (v) => _then(v as _Loading<T, E>));

  @override
  _Loading<T, E> get _value => super._value as _Loading<T, E>;
}

/// @nodoc

class _$_Loading<T, E> implements _Loading<T, E> {
  const _$_Loading();

  @override
  String toString() {
    return 'ViewState<$T, $E>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading<T, E>);
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
    required TResult Function(_Initial<T, E> value) initial,
    required TResult Function(_Loading<T, E> value) loading,
    required TResult Function(_Data<T, E> value) data,
    required TResult Function(_Error<T, E> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Data<T, E> value)? data,
    TResult Function(_Error<T, E> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Data<T, E> value)? data,
    TResult Function(_Error<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T, E> implements ViewState<T, E> {
  const factory _Loading() = _$_Loading<T, E>;
}

/// @nodoc
abstract class _$DataCopyWith<T, E, $Res> {
  factory _$DataCopyWith(_Data<T, E> value, $Res Function(_Data<T, E>) then) =
      __$DataCopyWithImpl<T, E, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$DataCopyWithImpl<T, E, $Res>
    extends _$ViewStateCopyWithImpl<T, E, $Res>
    implements _$DataCopyWith<T, E, $Res> {
  __$DataCopyWithImpl(_Data<T, E> _value, $Res Function(_Data<T, E>) _then)
      : super(_value, (v) => _then(v as _Data<T, E>));

  @override
  _Data<T, E> get _value => super._value as _Data<T, E>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Data<T, E>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Data<T, E> implements _Data<T, E> {
  const _$_Data(this.data);

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
            other is _Data<T, E> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<T, E, _Data<T, E>> get copyWith =>
      __$DataCopyWithImpl<T, E, _Data<T, E>>(this, _$identity);

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
    required TResult Function(_Initial<T, E> value) initial,
    required TResult Function(_Loading<T, E> value) loading,
    required TResult Function(_Data<T, E> value) data,
    required TResult Function(_Error<T, E> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Data<T, E> value)? data,
    TResult Function(_Error<T, E> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Data<T, E> value)? data,
    TResult Function(_Error<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data<T, E> implements ViewState<T, E> {
  const factory _Data(T data) = _$_Data<T, E>;

  T get data;
  @JsonKey(ignore: true)
  _$DataCopyWith<T, E, _Data<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<T, E, $Res> {
  factory _$ErrorCopyWith(
          _Error<T, E> value, $Res Function(_Error<T, E>) then) =
      __$ErrorCopyWithImpl<T, E, $Res>;
  $Res call({E error, T? lastData});
}

/// @nodoc
class __$ErrorCopyWithImpl<T, E, $Res>
    extends _$ViewStateCopyWithImpl<T, E, $Res>
    implements _$ErrorCopyWith<T, E, $Res> {
  __$ErrorCopyWithImpl(_Error<T, E> _value, $Res Function(_Error<T, E>) _then)
      : super(_value, (v) => _then(v as _Error<T, E>));

  @override
  _Error<T, E> get _value => super._value as _Error<T, E>;

  @override
  $Res call({
    Object? error = freezed,
    Object? lastData = freezed,
  }) {
    return _then(_Error<T, E>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
      lastData: lastData == freezed
          ? _value.lastData
          : lastData // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_Error<T, E> implements _Error<T, E> {
  const _$_Error(this.error, {this.lastData});

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
            other is _Error<T, E> &&
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
  _$ErrorCopyWith<T, E, _Error<T, E>> get copyWith =>
      __$ErrorCopyWithImpl<T, E, _Error<T, E>>(this, _$identity);

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
    required TResult Function(_Initial<T, E> value) initial,
    required TResult Function(_Loading<T, E> value) loading,
    required TResult Function(_Data<T, E> value) data,
    required TResult Function(_Error<T, E> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Data<T, E> value)? data,
    TResult Function(_Error<T, E> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Data<T, E> value)? data,
    TResult Function(_Error<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T, E> implements ViewState<T, E> {
  const factory _Error(E error, {T? lastData}) = _$_Error<T, E>;

  E get error;
  T? get lastData;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<T, E, _Error<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
