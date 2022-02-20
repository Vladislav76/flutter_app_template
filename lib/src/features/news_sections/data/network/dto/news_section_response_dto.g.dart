// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_section_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsSectionResponseDTO _$NewsSectionResponseDTOFromJson(
        Map<String, dynamic> json) =>
    NewsSectionResponseDTO(
      status: json['status'] as String,
      total: json['total'] as int,
      sections: (json['results'] as List<dynamic>)
          .map((e) => NewsSectionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
