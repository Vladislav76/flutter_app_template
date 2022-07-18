import 'package:flutter_app_template/features/skins/domain/entity/skin.dart';
import 'package:flutter_app_template/features/skins/domain/repository/skin_repo.dart';
import 'package:flutter_app_template/locator.dart';
import 'package:flutter_app_template/packages/state/reloadable_view_state_notifier.dart';

class SkinsLoader extends ReloadableViewStateNotifier<List<Skin>> {
  @override
  get loadData => locator.get<SkinRepository>().getSkins();
}
