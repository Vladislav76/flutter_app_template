import 'package:flutter_app_template/packages/entity/data_error.dart';
import 'package:flutter_app_template/packages/entity/view_state.dart';
import 'package:flutter_app_template/packages/state/view_state_notifier.dart';
import 'package:flutter_app_template/util/either.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef ReloadableViewStateNotifierProvider<T> = StateNotifierProvider<ReloadableViewStateNotifier<T>, ViewState<T>>;

abstract class ReloadableViewStateNotifier<T> extends ViewStateNotifier<T> {
  Future<Either<DataError, T>> get loadData;

  void load() {
    makeRequest(request: loadData);
  }

  void reload() {
    makeRequest(request: loadData, skipLoading: true);
  }
}
