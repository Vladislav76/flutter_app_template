import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_section_dto.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class NewsSectionDTO {
  NewsSectionDTO({required this.id});

  @HiveField(0)
  final String id;

  factory NewsSectionDTO.fromJson(Map<String, dynamic> json) => _$NewsSectionDTOFromJson(json);
}
