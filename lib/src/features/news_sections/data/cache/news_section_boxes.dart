import 'package:hive/hive.dart';
import 'package:template_app/src/core/persistence/hive_box_builder.dart';
import 'package:template_app/src/features/news_sections/data/network/dto/news_section_dto.dart';

class NewsSectionBoxes {
  NewsSectionBoxes._({required this.newsSectionBox});
  final Box<NewsSectionDTO> newsSectionBox;
  static late final NewsSectionBoxes instance;

  static Future<void> open() async {
    instance = NewsSectionBoxes._(
      newsSectionBox: await HiveBoxBuilder.buildBox<NewsSectionDTO>(
        adapter: NewsSectionDTOAdapter(),
        name: 'news_sections',
      ),
    );
  }
}
