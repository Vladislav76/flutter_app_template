import 'package:template_app/src/core/utils/data_mapper.dart';
import 'package:template_app/src/features/news_sections/data/network/dto/news_section_dto.dart';
import 'package:template_app/src/features/news_sections/domain/entity/news_section.dart';

class NewsSectionDTOMapper implements DataMapper<NewsSectionDTO, NewsSection> {
  const NewsSectionDTOMapper();

  @override
  NewsSection map(data) => NewsSection(id: data.id);
}
