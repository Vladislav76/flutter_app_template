import 'package:flutter/material.dart';
import 'package:flutter_app_template/assets/strings/l10n.dart';
import 'package:flutter_app_template/packages/entity/data_error.dart';
import 'package:flutter_app_template/packages/entity/view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin ViewStateListener {
  // Listens all state errors
  // Show default messages for general network errors (if enabled)
  void listen<T>(
    BuildContext context,
    WidgetRef ref, {
    required ProviderListenable<ViewState<T>> provider,
    void Function()? onInitial,
    void Function(T?)? onLoading,
    void Function(T)? onSuccess,
    void Function(DataError, T?)? onFailure,
    bool allowErrorPopups = true,
  }) {
    ref.listen<ViewState<T>>(
      provider,
      (_, state) {
        state.whenOrNull(
          initial: onInitial,
          loading: onLoading,
          success: onSuccess,
          failure: (error, data) {
            // Show error popup
            if (allowErrorPopups) {
              final message = _defineErrorMessage(error);
              if (message != null) {
                _showErrorPopup(context, message);
              }
            }
            // Invoke callback
            onFailure?.call(error, data);
          },
        );
      },
    );
  }

  String? _defineErrorMessage(DataError error) {
    return error.whenOrNull(
      network: (ne) => ne.when(
        noInternetConnection: () => S.current.internetConnectionNetworkError,
        badRequest: () => S.current.badRequestNetworkError,
        unathorized: () => S.current.unathorizedNetworkError,
        notFound: () => S.current.notFoundNetworkError,
        other: (_) => S.current.unknownNetworkError,
      ),
      noData: () => S.current.unknownNetworkError,
      unknown: (_, __) => S.current.unknownDataError,
    );
  }

  void _showErrorPopup(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
