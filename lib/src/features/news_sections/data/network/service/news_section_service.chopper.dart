// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_section_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$NewsSectionService extends NewsSectionService {
  _$NewsSectionService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NewsSectionService;

  @override
  Future<Response<NewsSectionResponseDTO>> getNewsSections() {
    final $url = '/sections';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<NewsSectionResponseDTO, NewsSectionResponseDTO>($request);
  }
}
