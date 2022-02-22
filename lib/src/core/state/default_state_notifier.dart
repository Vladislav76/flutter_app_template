import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/error/data_error.dart';
import 'package:template_app/src/core/error/network_error.dart';
import 'package:template_app/src/core/state/view_state.dart';

abstract class DefaultStateNotifier<TData> extends StateNotifier<ViewState<TData, Object>> {
  DefaultStateNotifier() : super(const ViewState.initial());
  TData? lastData;

  Future<bool> tryRequest({
    required Future<TData> Function() request,
  }) async {
    state = const ViewState.loading();
    try {
      final data = await request();
      state = ViewState.data(data);

      return true;
    } on SocketException catch (e) {
      debugPrint('[State Notifier] Network error - $e');
      _sendError(const NetworkError.internetConnection());
    } on NetworkError catch (e) {
      debugPrint('[State Notifier] Network error - $e');
      _sendError(e);
    } catch (e) {
      debugPrint('[State Notifier] Unknown error - $e');
      _sendError(const DataError.unknown());
    }

    return false;
  }

  void _sendError(Object error) {
    state = ViewState.error(error, lastData: lastData);
  }
}
