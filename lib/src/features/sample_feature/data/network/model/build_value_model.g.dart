// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_value_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Model> _$modelSerializer = new _$ModelSerializer();

class _$ModelSerializer implements StructuredSerializer<Model> {
  @override
  final Iterable<Type> types = const [Model, _$Model];
  @override
  final String wireName = 'Model';

  @override
  Iterable<Object?> serialize(Serializers serializers, Model object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'nullableValue',
      serializers.serialize(object.nullableValue,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Model deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nullableValue':
          result.nullableValue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Model extends Model {
  @override
  final int nullableValue;

  factory _$Model([void Function(ModelBuilder)? updates]) =>
      (new ModelBuilder()..update(updates)).build();

  _$Model._({required this.nullableValue}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        nullableValue, 'Model', 'nullableValue');
  }

  @override
  Model rebuild(void Function(ModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelBuilder toBuilder() => new ModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Model && nullableValue == other.nullableValue;
  }

  @override
  int get hashCode {
    return $jf($jc(0, nullableValue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Model')
          ..add('nullableValue', nullableValue))
        .toString();
  }
}

class ModelBuilder implements Builder<Model, ModelBuilder> {
  _$Model? _$v;

  int? _nullableValue;
  int? get nullableValue => _$this._nullableValue;
  set nullableValue(int? nullableValue) =>
      _$this._nullableValue = nullableValue;

  ModelBuilder();

  ModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nullableValue = $v.nullableValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Model other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Model;
  }

  @override
  void update(void Function(ModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Model build() {
    final _$result = _$v ??
        new _$Model._(
            nullableValue: BuiltValueNullFieldError.checkNotNull(
                nullableValue, 'Model', 'nullableValue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
