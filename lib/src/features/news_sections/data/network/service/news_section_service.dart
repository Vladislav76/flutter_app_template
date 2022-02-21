import 'package:chopper/chopper.dart';
import 'package:template_app/src/features/news_sections/data/network/dto/news_section_response_dto.dart';
import 'package:template_app/src/features/news_sections/data/network/service/news_section_service_api.dart';

part 'news_section_service.chopper.dart';

@ChopperApi()
abstract class NewsSectionService extends ChopperService implements NewsSectionServiceApi {
  NewsSectionService();

  factory NewsSectionService.create({ChopperClient? client}) => _$NewsSectionService(client);

  @override
  @Get(path: '/sections')
  Future<Response<NewsSectionResponseDTO>> getNewsSections();
}
