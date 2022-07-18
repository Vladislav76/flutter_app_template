// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function(NetworkError error) network,
    required TResult Function(Object error) custom,
    required TResult Function(Object? error, StackTrace? stackTrace) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(NetworkError error)? network,
    TResult Function(Object error)? custom,
    TResult Function(Object? error, StackTrace? stackTrace)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(NetworkError error)? network,
    TResult Function(Object error)? custom,
    TResult Function(Object? error, StackTrace? stackTrace)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoData value) noData,
    required TResult Function(_Network value) network,
    required TResult Function(_Custom value) custom,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Network value)? network,
    TResult Function(_Custom value)? custom,
    TResult Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Network value)? network,
    TResult Function(_Custom value)? custom,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataErrorCopyWith<$Res> {
  factory $DataErrorCopyWith(DataError value, $Res Function(DataError) then) =
      _$DataErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataErrorCopyWithImpl<$Res> implements $DataErrorCopyWith<$Res> {
  _$DataErrorCopyWithImpl(this._value, this._then);

  final DataError _value;
  // ignore: unused_field
  final $Res Function(DataError) _then;
}

/// @nodoc
abstract class _$$_NoDataCopyWith<$Res> {
  factory _$$_NoDataCopyWith(_$_NoData value, $Res Function(_$_NoData) then) =
      __$$_NoDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoDataCopyWithImpl<$Res> extends _$DataErrorCopyWithImpl<$Res>
    implements _$$_NoDataCopyWith<$Res> {
  __$$_NoDataCopyWithImpl(_$_NoData _value, $Res Function(_$_NoData) _then)
      : super(_value, (v) => _then(v as _$_NoData));

  @override
  _$_NoData get _value => super._value as _$_NoData;
}

/// @nodoc

class _$_NoData implements _NoData {
  const _$_NoData();

  @override
  String toString() {
    return 'DataError.noData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function(NetworkError error) network,
    required TResult Function(Object error) custom,
    required TResult Function(Object? error, StackTrace? stackTrace) unknown,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(NetworkError error)? network,
    TResult Function(Object error)? custom,
    TResult Function(Object? error, StackTrace? stackTrace)? unknown,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(NetworkError error)? network,
    TResult Function(Object error)? custom,
    TResult Function(Object? error, StackTrace? stackTrace)? unknown,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoData value) noData,
    required TResult Function(_Network value) network,
    required TResult Function(_Custom value) custom,
    required TResult Function(_Unknown value) unknown,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Network value)? network,
    TResult Function(_Custom value)? custom,
    TResult Function(_Unknown value)? unknown,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Network value)? network,
    TResult Function(_Custom value)? custom,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _NoData implements DataError {
  const factory _NoData() = _$_NoData;
}

/// @nodoc
abstract class _$$_NetworkCopyWith<$Res> {
  factory _$$_NetworkCopyWith(
          _$_Network value, $Res Function(_$_Network) then) =
      __$$_NetworkCopyWithImpl<$Res>;
  $Res call({NetworkError error});

  $NetworkErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_NetworkCopyWithImpl<$Res> extends _$DataErrorCopyWithImpl<$Res>
    implements _$$_NetworkCopyWith<$Res> {
  __$$_NetworkCopyWithImpl(_$_Network _value, $Res Function(_$_Network) _then)
      : super(_value, (v) => _then(v as _$_Network));

  @override
  _$_Network get _value => super._value as _$_Network;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Network(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError,
    ));
  }

  @override
  $NetworkErrorCopyWith<$Res> get error {
    return $NetworkErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Network implements _Network {
  const _$_Network(this.error);

  @override
  final NetworkError error;

  @override
  String toString() {
    return 'DataError.network(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Network &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_NetworkCopyWith<_$_Network> get copyWith =>
      __$$_NetworkCopyWithImpl<_$_Network>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function(NetworkError error) network,
    required TResult Function(Object error) custom,
    required TResult Function(Object? error, StackTrace? stackTrace) unknown,
  }) {
    return network(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(NetworkError error)? network,
    TResult Function(Object error)? custom,
    TResult Function(Object? error, StackTrace? stackTrace)? unknown,
  }) {
    return network?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(NetworkError error)? network,
    TResult Function(Object error)? custom,
    TResult Function(Object? error, StackTrace? stackTrace)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoData value) noData,
    required TResult Function(_Network value) network,
    required TResult Function(_Custom value) custom,
    required TResult Function(_Unknown value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Network value)? network,
    TResult Function(_Custom value)? custom,
    TResult Function(_Unknown value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Network value)? network,
    TResult Function(_Custom value)? custom,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements DataError {
  const factory _Network(final NetworkError error) = _$_Network;

  NetworkError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_NetworkCopyWith<_$_Network> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CustomCopyWith<$Res> {
  factory _$$_CustomCopyWith(_$_Custom value, $Res Function(_$_Custom) then) =
      __$$_CustomCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class __$$_CustomCopyWithImpl<$Res> extends _$DataErrorCopyWithImpl<$Res>
    implements _$$_CustomCopyWith<$Res> {
  __$$_CustomCopyWithImpl(_$_Custom _value, $Res Function(_$_Custom) _then)
      : super(_value, (v) => _then(v as _$_Custom));

  @override
  _$_Custom get _value => super._value as _$_Custom;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Custom(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_Custom implements _Custom {
  const _$_Custom(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'DataError.custom(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Custom &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_CustomCopyWith<_$_Custom> get copyWith =>
      __$$_CustomCopyWithImpl<_$_Custom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function(NetworkError error) network,
    required TResult Function(Object error) custom,
    required TResult Function(Object? error, StackTrace? stackTrace) unknown,
  }) {
    return custom(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(NetworkError error)? network,
    TResult Function(Object error)? custom,
    TResult Function(Object? error, StackTrace? stackTrace)? unknown,
  }) {
    return custom?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(NetworkError error)? network,
    TResult Function(Object error)? custom,
    TResult Function(Object? error, StackTrace? stackTrace)? unknown,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoData value) noData,
    required TResult Function(_Network value) network,
    required TResult Function(_Custom value) custom,
    required TResult Function(_Unknown value) unknown,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Network value)? network,
    TResult Function(_Custom value)? custom,
    TResult Function(_Unknown value)? unknown,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Network value)? network,
    TResult Function(_Custom value)? custom,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class _Custom implements DataError {
  const factory _Custom(final Object error) = _$_Custom;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CustomCopyWith<_$_Custom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
  $Res call({Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res> extends _$DataErrorCopyWithImpl<$Res>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, (v) => _then(v as _$_Unknown));

  @override
  _$_Unknown get _value => super._value as _$_Unknown;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_Unknown(
      error == freezed ? _value.error : error,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown(this.error, {this.stackTrace});

  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'DataError.unknown(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unknown &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      __$$_UnknownCopyWithImpl<_$_Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function(NetworkError error) network,
    required TResult Function(Object error) custom,
    required TResult Function(Object? error, StackTrace? stackTrace) unknown,
  }) {
    return unknown(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(NetworkError error)? network,
    TResult Function(Object error)? custom,
    TResult Function(Object? error, StackTrace? stackTrace)? unknown,
  }) {
    return unknown?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function(NetworkError error)? network,
    TResult Function(Object error)? custom,
    TResult Function(Object? error, StackTrace? stackTrace)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoData value) noData,
    required TResult Function(_Network value) network,
    required TResult Function(_Custom value) custom,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Network value)? network,
    TResult Function(_Custom value)? custom,
    TResult Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Network value)? network,
    TResult Function(_Custom value)? custom,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements DataError {
  const factory _Unknown(final Object? error, {final StackTrace? stackTrace}) =
      _$_Unknown;

  Object? get error => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}
