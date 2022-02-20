import 'package:chopper/chopper.dart';
import 'package:template_app/src/features/news_sections/data/network/dto/news_section_response_dto.dart';

abstract class NewsSectionServiceApi {
  Future<Response<NewsSectionResponseDTO>> getNewsSections();
}
