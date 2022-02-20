import 'package:json_annotation/json_annotation.dart';
import 'package:template_app/src/features/news_sections/data/network/dto/news_section_dto.dart';

part 'news_section_response_dto.g.dart';

@JsonSerializable()
class NewsSectionResponseDTO {
  NewsSectionResponseDTO({
    required this.status,
    required this.total,
    required this.sections,
  });
  final String status;
  final int total;

  @JsonKey(name: 'results')
  final List<NewsSectionDTO> sections;

  factory NewsSectionResponseDTO.fromJson(Map<String, dynamic> json) => _$NewsSectionResponseDTOFromJson(json);
}
