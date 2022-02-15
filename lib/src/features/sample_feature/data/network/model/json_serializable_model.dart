import 'package:json_annotation/json_annotation.dart';

part 'json_serializable_model.g.dart';

@JsonSerializable()
class Model {
  Model({required this.id});

  @JsonKey(defaultValue: 0)
  final int id;

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
}
