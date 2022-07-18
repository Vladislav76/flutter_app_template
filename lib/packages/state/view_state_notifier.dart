import 'dart:async';
import 'package:flutter_app_template/packages/entity/data_error.dart';
import 'package:flutter_app_template/packages/entity/view_state.dart';
import 'package:flutter_app_template/util/either.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef ViewStateNotifierProvider<T> = StateNotifierProvider<ViewStateNotifier<T>, ViewState<T>>;

abstract class ViewStateNotifier<T> extends StateNotifier<ViewState<T>> {
  ViewStateNotifier() : super(const ViewState.initial());

  T? latestData;

  void makeRequest({
    required Future<Either<DataError, T>> request,
    void Function(T?)? onLoading,
    void Function(T)? onSuccess,
    void Function(DataError, T?)? onFailure,
    bool skipLoading = false,
  }) async {
    // Loading
    if (mounted && !skipLoading) {
      state = ViewState.loading(data: latestData);
      onLoading?.call(latestData);
    }
    // Make request
    final response = await request;
    // Process response
    response.when(
      // Failure
      left: (error) {
        if (mounted) {
          state = ViewState.failure(error, data: latestData);
          onFailure?.call(error, latestData);
        }
      },
      // Success
      right: (data) {
        if (mounted) {
          latestData = data;
          state = ViewState.success(data);
          onSuccess?.call(data);
        }
      },
    );
  }
}
