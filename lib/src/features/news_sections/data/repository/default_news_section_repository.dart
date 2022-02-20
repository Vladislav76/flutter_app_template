import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/persistence/default_token_storage.dart';
import 'package:template_app/src/features/news_sections/data/mapping/news_section_dto_mapper.dart';
import 'package:template_app/src/features/news_sections/data/network/service/news_section_service.dart';
import 'package:template_app/src/features/news_sections/data/network/service/news_section_service_api.dart';
import 'package:template_app/src/features/news_sections/domain/entity/news_section.dart';
import 'package:template_app/src/features/news_sections/domain/repository/news_section_repository.dart';

final newsSectionRepositoryProvider = Provider<NewsSectionRepository>((ref) {
  final tokenStorage = ref.read(tokenStorageProvider);
  final service = NewsSectionService.create(tokenStorage: tokenStorage);

  return DefaultNewsSectionRepository(service: service);
});

class DefaultNewsSectionRepository implements NewsSectionRepository {
  DefaultNewsSectionRepository({
    required NewsSectionServiceApi service,
  }) : _service = service;
  final NewsSectionServiceApi _service;

  @override
  Future<List<NewsSection>> getNewsSections() async {
    final response = await _service.getNewsSections();
    final data = response.body;
    if (data == null) throw Exception('Null data fetched from the network');

    return data.sections.map(const NewsSectionDTOMapper().map).toList();
  }
}
