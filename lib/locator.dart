import 'package:flutter_app_template/features/skins/data/repository/skin_repo_impl.dart';
import 'package:flutter_app_template/features/skins/domain/entity/skin.dart';
import 'package:flutter_app_template/features/skins/domain/repository/skin_repo.dart';
import 'package:flutter_app_template/features/skins/presentation/providers.dart';
import 'package:flutter_app_template/packages/state/reloadable_view_state_notifier.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void initLocator() {
  locator.registerLazySingleton<SkinRepository>(() => SkinRepositoryImpl());
  locator.registerLazySingleton<ReloadableViewStateNotifierProvider<List<Skin>>>(() => skinsLoaderProvider);
}