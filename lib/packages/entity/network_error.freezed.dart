// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() unathorized,
    required TResult Function() notFound,
    required TResult Function(int responseCode) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function(int responseCode)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function(int responseCode)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unathorized value) unathorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Other value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Other value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkErrorCopyWith<$Res> {
  factory $NetworkErrorCopyWith(
          NetworkError value, $Res Function(NetworkError) then) =
      _$NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkErrorCopyWithImpl<$Res> implements $NetworkErrorCopyWith<$Res> {
  _$NetworkErrorCopyWithImpl(this._value, this._then);

  final NetworkError _value;
  // ignore: unused_field
  final $Res Function(NetworkError) _then;
}

/// @nodoc
abstract class _$$_NoInternetConnectionCopyWith<$Res> {
  factory _$$_NoInternetConnectionCopyWith(_$_NoInternetConnection value,
          $Res Function(_$_NoInternetConnection) then) =
      __$$_NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoInternetConnectionCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$$_NoInternetConnectionCopyWith<$Res> {
  __$$_NoInternetConnectionCopyWithImpl(_$_NoInternetConnection _value,
      $Res Function(_$_NoInternetConnection) _then)
      : super(_value, (v) => _then(v as _$_NoInternetConnection));

  @override
  _$_NoInternetConnection get _value => super._value as _$_NoInternetConnection;
}

/// @nodoc

class _$_NoInternetConnection
    with DiagnosticableTreeMixin
    implements _NoInternetConnection {
  const _$_NoInternetConnection();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkError.noInternetConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkError.noInternetConnection'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() unathorized,
    required TResult Function() notFound,
    required TResult Function(int responseCode) other,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function(int responseCode)? other,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function(int responseCode)? other,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unathorized value) unathorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Other value) other,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Other value)? other,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection implements NetworkError {
  const factory _NoInternetConnection() = _$_NoInternetConnection;
}

/// @nodoc
abstract class _$$_BadRequestCopyWith<$Res> {
  factory _$$_BadRequestCopyWith(
          _$_BadRequest value, $Res Function(_$_BadRequest) then) =
      __$$_BadRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BadRequestCopyWithImpl<$Res> extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$$_BadRequestCopyWith<$Res> {
  __$$_BadRequestCopyWithImpl(
      _$_BadRequest _value, $Res Function(_$_BadRequest) _then)
      : super(_value, (v) => _then(v as _$_BadRequest));

  @override
  _$_BadRequest get _value => super._value as _$_BadRequest;
}

/// @nodoc

class _$_BadRequest with DiagnosticableTreeMixin implements _BadRequest {
  const _$_BadRequest();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkError.badRequest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NetworkError.badRequest'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BadRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() unathorized,
    required TResult Function() notFound,
    required TResult Function(int responseCode) other,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function(int responseCode)? other,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function(int responseCode)? other,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unathorized value) unathorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Other value) other,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Other value)? other,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements NetworkError {
  const factory _BadRequest() = _$_BadRequest;
}

/// @nodoc
abstract class _$$_UnathorizedCopyWith<$Res> {
  factory _$$_UnathorizedCopyWith(
          _$_Unathorized value, $Res Function(_$_Unathorized) then) =
      __$$_UnathorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnathorizedCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$$_UnathorizedCopyWith<$Res> {
  __$$_UnathorizedCopyWithImpl(
      _$_Unathorized _value, $Res Function(_$_Unathorized) _then)
      : super(_value, (v) => _then(v as _$_Unathorized));

  @override
  _$_Unathorized get _value => super._value as _$_Unathorized;
}

/// @nodoc

class _$_Unathorized with DiagnosticableTreeMixin implements _Unathorized {
  const _$_Unathorized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkError.unathorized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NetworkError.unathorized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unathorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() unathorized,
    required TResult Function() notFound,
    required TResult Function(int responseCode) other,
  }) {
    return unathorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function(int responseCode)? other,
  }) {
    return unathorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function(int responseCode)? other,
    required TResult orElse(),
  }) {
    if (unathorized != null) {
      return unathorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unathorized value) unathorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Other value) other,
  }) {
    return unathorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Other value)? other,
  }) {
    return unathorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (unathorized != null) {
      return unathorized(this);
    }
    return orElse();
  }
}

abstract class _Unathorized implements NetworkError {
  const factory _Unathorized() = _$_Unathorized;
}

/// @nodoc
abstract class _$$_NotFoundCopyWith<$Res> {
  factory _$$_NotFoundCopyWith(
          _$_NotFound value, $Res Function(_$_NotFound) then) =
      __$$_NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotFoundCopyWithImpl<$Res> extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$$_NotFoundCopyWith<$Res> {
  __$$_NotFoundCopyWithImpl(
      _$_NotFound _value, $Res Function(_$_NotFound) _then)
      : super(_value, (v) => _then(v as _$_NotFound));

  @override
  _$_NotFound get _value => super._value as _$_NotFound;
}

/// @nodoc

class _$_NotFound with DiagnosticableTreeMixin implements _NotFound {
  const _$_NotFound();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkError.notFound()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NetworkError.notFound'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() unathorized,
    required TResult Function() notFound,
    required TResult Function(int responseCode) other,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function(int responseCode)? other,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function(int responseCode)? other,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unathorized value) unathorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Other value) other,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Other value)? other,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements NetworkError {
  const factory _NotFound() = _$_NotFound;
}

/// @nodoc
abstract class _$$_OtherCopyWith<$Res> {
  factory _$$_OtherCopyWith(_$_Other value, $Res Function(_$_Other) then) =
      __$$_OtherCopyWithImpl<$Res>;
  $Res call({int responseCode});
}

/// @nodoc
class __$$_OtherCopyWithImpl<$Res> extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$$_OtherCopyWith<$Res> {
  __$$_OtherCopyWithImpl(_$_Other _value, $Res Function(_$_Other) _then)
      : super(_value, (v) => _then(v as _$_Other));

  @override
  _$_Other get _value => super._value as _$_Other;

  @override
  $Res call({
    Object? responseCode = freezed,
  }) {
    return _then(_$_Other(
      responseCode == freezed
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Other with DiagnosticableTreeMixin implements _Other {
  const _$_Other(this.responseCode);

  @override
  final int responseCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkError.other(responseCode: $responseCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkError.other'))
      ..add(DiagnosticsProperty('responseCode', responseCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Other &&
            const DeepCollectionEquality()
                .equals(other.responseCode, responseCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(responseCode));

  @JsonKey(ignore: true)
  @override
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      __$$_OtherCopyWithImpl<_$_Other>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() badRequest,
    required TResult Function() unathorized,
    required TResult Function() notFound,
    required TResult Function(int responseCode) other,
  }) {
    return other(responseCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function(int responseCode)? other,
  }) {
    return other?.call(responseCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function(int responseCode)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(responseCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unathorized value) unathorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Other value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Other value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class _Other implements NetworkError {
  const factory _Other(final int responseCode) = _$_Other;

  int get responseCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      throw _privateConstructorUsedError;
}
