import 'package:json_annotation/json_annotation.dart';

part 'news_section_dto.g.dart';

@JsonSerializable()
class NewsSectionDTO {
  NewsSectionDTO({required this.id});

  final String id;

  factory NewsSectionDTO.fromJson(Map<String, dynamic> json) => _$NewsSectionDTOFromJson(json);
}
