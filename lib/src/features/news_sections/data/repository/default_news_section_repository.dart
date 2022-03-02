import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/app/default_chopper_client.dart';
import 'package:template_app/src/core/persistence/default_repository.dart';
import 'package:template_app/src/core/utils/either.dart';
import 'package:template_app/src/features/news_sections/data/cache/news_section_cache.dart';
import 'package:template_app/src/features/news_sections/data/cache/news_section_cache_api.dart';
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
    cache: ref.read(newsSectionCacheProvider),
  );
});

class DefaultNewsSectionRepository extends DefaultRepository implements NewsSectionRepository {
  DefaultNewsSectionRepository({
    required this.service,
    required this.cache,
  });
  final NewsSectionServiceApi service;
  final NewsSectionCacheApi cache;

  @override
  late final newsSectionsStream = _streamController.stream.asBroadcastStream();
  final _streamController = StreamController<Either<Object, List<NewsSection>>>();

  @override
  Future<void> requestNewsSections() async {
    // TODO: temporaly disabled
    // Gets cached data
    // final cachedData = cache.readNewsSections();
    // if (cachedData.isNotEmpty) {
    //   final data = cachedData.map(const NewsSectionDTOMapper().map).toList();
    //   _streamController.add(Either.right(data));
    // }

    // Gets network data
    final serviceResponse = await makeNetworkRequest(request: () => service.getNewsSections());
    final event = await serviceResponse.when<Future<Either<Object, List<NewsSection>>>>(
      left: (error) => Future.value(Either.left(error)),
      right: (data) async {
        await cache.writeNewsSections(data.sections);

        return Either.right(data.sections.map(const NewsSectionDTOMapper().map).toList());
      },
    );
    _streamController.add(event);
  }
}
