import 'package:template_app/src/core/utils/either.dart';
import 'package:template_app/src/features/news_sections/domain/entity/news_section.dart';

abstract class NewsSectionRepository {
  abstract final Stream<Either<Object, List<NewsSection>>> newsSectionsStream;

  Future<void> requestNewsSections();
}
