import 'package:template_app/src/features/news_sections/data/network/dto/news_section_dto.dart';

abstract class NewsSectionCacheApi {
  List<NewsSectionDTO> readNewsSections();
  Future<void> writeNewsSections(List<NewsSectionDTO> data);
}
