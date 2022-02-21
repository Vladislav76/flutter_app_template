import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/state/view_state.dart';

abstract class DefaultStateNotifier<TData> extends StateNotifier<ViewState<TData, Object>> {
  DefaultStateNotifier() : super(const ViewState.initial());
  TData? lastData;

  Future<bool> tryAction({
    required Future<TData> Function() action,
  }) async {
    state = const ViewState.loading();
    try {
      final data = await action();
      state = ViewState.data(data);

      return true;
    } catch (e) {
      state = ViewState.error(e, lastData: lastData);

      return false;
    }
  }
}
