import 'package:json_annotation/json_annotation.dart';

part 'feature_object_dto.g.dart';

@JsonSerializable()
class FeatureObjectDTO {
  FeatureObjectDTO({required this.id});

  @JsonKey(defaultValue: 0)
  final int id;

  factory FeatureObjectDTO.fromJson(Map<String, dynamic> json) => _$FeatureObjectDTOFromJson(json);
}
