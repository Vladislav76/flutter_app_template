import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:template_app/src/features/news_sections/data/cache/news_section_boxes.dart';
import 'package:template_app/src/features/news_sections/data/cache/news_section_cache_api.dart';
import 'package:template_app/src/features/news_sections/data/network/dto/news_section_dto.dart';

final newsSectionCacheProvider = Provider<NewsSectionCacheApi>((ref) {
  return NewsSectionCache(box: NewsSectionBoxes.instance.newsSectionBox);
});

class NewsSectionCache implements NewsSectionCacheApi {
  NewsSectionCache({required this.box});
  final Box<NewsSectionDTO> box;

  @override
  List<NewsSectionDTO> readNewsSections() {
    final data = box.values.toList();
    debugPrint('[Cache] Fetched ${data.length} news sections');

    return data;
  }

  @override
  Future<void> writeNewsSections(List<NewsSectionDTO> data) async {
    debugPrint('[Cache] Saved ${data.length} news sections');
    await box.clear();
    await box.addAll(data);
  }
}
