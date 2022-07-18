import 'package:flutter_app_template/features/skins/domain/entity/skin.dart';
import 'package:flutter_app_template/features/skins/presentation/state/skins_loader.dart';
import 'package:flutter_app_template/packages/state/reloadable_view_state_notifier.dart';

final skinsLoaderProvider = ReloadableViewStateNotifierProvider<List<Skin>>(
  (ref) {
    return SkinsLoader()..load();
  },
);
