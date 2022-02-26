import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/core/utils/either.dart';

abstract class DefaultStateNotifier<TData> extends StateNotifier<ViewState<TData, Object>> {
  DefaultStateNotifier() : super(const ViewState.initial());
  TData? lastData;

  void makeRequest({
    required Future<Either<Object, TData>> Function() request,
    void Function(TData)? onSuccess,
  }) async {
    state = const ViewState.loading();
    final responseEvent = await request();
    responseEvent.when(
      left: (error) => state = ViewState.error(error, lastData: lastData),
      right: (data) {
        lastData = data;
        state = ViewState.data(data);
        onSuccess?.call(data);
      },
    );
  }
}
