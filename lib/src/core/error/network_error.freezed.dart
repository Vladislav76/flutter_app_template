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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkErrorTearOff {
  const _$NetworkErrorTearOff();

  _BadRequest badRequest() {
    return const _BadRequest();
  }

  _Unathorized unathorized() {
    return const _Unathorized();
  }

  _NotFound notFound() {
    return const _NotFound();
  }

  _InternetConnection internetConnection() {
    return const _InternetConnection();
  }

  _Unknown unknown() {
    return const _Unknown();
  }
}

/// @nodoc
const $NetworkError = _$NetworkErrorTearOff();

/// @nodoc
mixin _$NetworkError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badRequest,
    required TResult Function() unathorized,
    required TResult Function() notFound,
    required TResult Function() internetConnection,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function()? internetConnection,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function()? internetConnection,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unathorized value) unathorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternetConnection value) internetConnection,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternetConnection value)? internetConnection,
    TResult Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternetConnection value)? internetConnection,
    TResult Function(_Unknown value)? unknown,
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
abstract class _$BadRequestCopyWith<$Res> {
  factory _$BadRequestCopyWith(
          _BadRequest value, $Res Function(_BadRequest) then) =
      __$BadRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$BadRequestCopyWithImpl<$Res> extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$BadRequestCopyWith<$Res> {
  __$BadRequestCopyWithImpl(
      _BadRequest _value, $Res Function(_BadRequest) _then)
      : super(_value, (v) => _then(v as _BadRequest));

  @override
  _BadRequest get _value => super._value as _BadRequest;
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
        (other.runtimeType == runtimeType && other is _BadRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badRequest,
    required TResult Function() unathorized,
    required TResult Function() notFound,
    required TResult Function() internetConnection,
    required TResult Function() unknown,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function()? internetConnection,
    TResult Function()? unknown,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function()? internetConnection,
    TResult Function()? unknown,
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
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unathorized value) unathorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternetConnection value) internetConnection,
    required TResult Function(_Unknown value) unknown,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternetConnection value)? internetConnection,
    TResult Function(_Unknown value)? unknown,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternetConnection value)? internetConnection,
    TResult Function(_Unknown value)? unknown,
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
abstract class _$UnathorizedCopyWith<$Res> {
  factory _$UnathorizedCopyWith(
          _Unathorized value, $Res Function(_Unathorized) then) =
      __$UnathorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnathorizedCopyWithImpl<$Res> extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$UnathorizedCopyWith<$Res> {
  __$UnathorizedCopyWithImpl(
      _Unathorized _value, $Res Function(_Unathorized) _then)
      : super(_value, (v) => _then(v as _Unathorized));

  @override
  _Unathorized get _value => super._value as _Unathorized;
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
        (other.runtimeType == runtimeType && other is _Unathorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badRequest,
    required TResult Function() unathorized,
    required TResult Function() notFound,
    required TResult Function() internetConnection,
    required TResult Function() unknown,
  }) {
    return unathorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function()? internetConnection,
    TResult Function()? unknown,
  }) {
    return unathorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function()? internetConnection,
    TResult Function()? unknown,
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
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unathorized value) unathorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternetConnection value) internetConnection,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unathorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternetConnection value)? internetConnection,
    TResult Function(_Unknown value)? unknown,
  }) {
    return unathorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternetConnection value)? internetConnection,
    TResult Function(_Unknown value)? unknown,
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
abstract class _$NotFoundCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
      __$NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotFoundCopyWithImpl<$Res> extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(_NotFound _value, $Res Function(_NotFound) _then)
      : super(_value, (v) => _then(v as _NotFound));

  @override
  _NotFound get _value => super._value as _NotFound;
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
        (other.runtimeType == runtimeType && other is _NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badRequest,
    required TResult Function() unathorized,
    required TResult Function() notFound,
    required TResult Function() internetConnection,
    required TResult Function() unknown,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function()? internetConnection,
    TResult Function()? unknown,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function()? internetConnection,
    TResult Function()? unknown,
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
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unathorized value) unathorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternetConnection value) internetConnection,
    required TResult Function(_Unknown value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternetConnection value)? internetConnection,
    TResult Function(_Unknown value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternetConnection value)? internetConnection,
    TResult Function(_Unknown value)? unknown,
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
abstract class _$InternetConnectionCopyWith<$Res> {
  factory _$InternetConnectionCopyWith(
          _InternetConnection value, $Res Function(_InternetConnection) then) =
      __$InternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$InternetConnectionCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$InternetConnectionCopyWith<$Res> {
  __$InternetConnectionCopyWithImpl(
      _InternetConnection _value, $Res Function(_InternetConnection) _then)
      : super(_value, (v) => _then(v as _InternetConnection));

  @override
  _InternetConnection get _value => super._value as _InternetConnection;
}

/// @nodoc

class _$_InternetConnection
    with DiagnosticableTreeMixin
    implements _InternetConnection {
  const _$_InternetConnection();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkError.internetConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkError.internetConnection'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badRequest,
    required TResult Function() unathorized,
    required TResult Function() notFound,
    required TResult Function() internetConnection,
    required TResult Function() unknown,
  }) {
    return internetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function()? internetConnection,
    TResult Function()? unknown,
  }) {
    return internetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function()? internetConnection,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (internetConnection != null) {
      return internetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unathorized value) unathorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternetConnection value) internetConnection,
    required TResult Function(_Unknown value) unknown,
  }) {
    return internetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternetConnection value)? internetConnection,
    TResult Function(_Unknown value)? unknown,
  }) {
    return internetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternetConnection value)? internetConnection,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (internetConnection != null) {
      return internetConnection(this);
    }
    return orElse();
  }
}

abstract class _InternetConnection implements NetworkError {
  const factory _InternetConnection() = _$_InternetConnection;
}

/// @nodoc
abstract class _$UnknownCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) then) =
      __$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnknownCopyWithImpl<$Res> extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(_Unknown _value, $Res Function(_Unknown) _then)
      : super(_value, (v) => _then(v as _Unknown));

  @override
  _Unknown get _value => super._value as _Unknown;
}

/// @nodoc

class _$_Unknown with DiagnosticableTreeMixin implements _Unknown {
  const _$_Unknown();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkError.unknown()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NetworkError.unknown'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badRequest,
    required TResult Function() unathorized,
    required TResult Function() notFound,
    required TResult Function() internetConnection,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function()? internetConnection,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badRequest,
    TResult Function()? unathorized,
    TResult Function()? notFound,
    TResult Function()? internetConnection,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unathorized value) unathorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternetConnection value) internetConnection,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternetConnection value)? internetConnection,
    TResult Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unathorized value)? unathorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternetConnection value)? internetConnection,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements NetworkError {
  const factory _Unknown() = _$_Unknown;
}
