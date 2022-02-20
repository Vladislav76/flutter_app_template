import 'package:template_app/src/features/news_sections/domain/entity/news_section.dart';

abstract class NewsSectionRepository {
  Future<List<NewsSection>> getNewsSections();
}
