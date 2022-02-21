import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/app/default_chopper_client.dart';
import 'package:template_app/src/features/news_sections/data/mapping/news_section_dto_mapper.dart';
import 'package:template_app/src/features/news_sections/data/network/service/news_section_service.dart';
import 'package:template_app/src/features/news_sections/data/network/service/news_section_service_api.dart';
import 'package:template_app/src/features/news_sections/domain/entity/news_section.dart';
import 'package:template_app/src/features/news_sections/domain/repository/news_section_repository.dart';

final newsSectionRepositoryProvider = Provider<NewsSectionRepository>((ref) {
  return DefaultNewsSectionRepository(
    service: NewsSectionService.create(
      client: ref.read(defaultChopperClientProvider),
    ),
  );
});

class DefaultNewsSectionRepository implements NewsSectionRepository {
  const DefaultNewsSectionRepository({required this.service});
  final NewsSectionServiceApi service;

  @override
  Future<List<NewsSection>> getNewsSections() async {
    final response = await service.getNewsSections();
    final data = response.body;
    if (data == null) throw Exception('Null data fetched from the network');

    return data.sections.map(const NewsSectionDTOMapper().map).toList();
  }
}
