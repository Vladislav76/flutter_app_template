import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'build_value_model.g.dart';

abstract class Model implements Built<Model, ModelBuilder> {
  Model._();
  int get nullableValue;

  factory Model([void Function(ModelBuilder) updates]) = _$Model;

  static Serializer<Model> get serializer => _$modelSerializer;
}
