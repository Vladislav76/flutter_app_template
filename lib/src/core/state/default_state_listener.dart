import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/generated/l10n.dart';
import 'package:template_app/src/core/error/data_error.dart';
import 'package:template_app/src/core/error/network_error.dart';
import 'package:template_app/src/core/state/view_state.dart';

mixin DefaultStateListener {
  // Listens all state errors
  // Show default messages for general network errors (if enabled)
  void listenStates<TData>({
    required BuildContext context,
    required WidgetRef ref,
    required ProviderListenable<ViewState<TData, Object>> provider,
    bool enableErrorPopups = true,
    void Function(Object)? onError,
    void Function(TData)? onData,
    void Function(TData?)? onLoading,
  }) {
    ref.listen<ViewState<TData, Object>>(
      provider,
      (_, state) {
        state.whenOrNull(
          loading: onLoading,
          data: onData,
          error: (e, _) {
            if (enableErrorPopups) {
              showErrorMessage(context, defineErrorMessage(context, e));
            }
            onError?.call(e);
          },
        );
      },
    );
  }

  String defineErrorMessage(BuildContext context, Object error) {
    return (error is NetworkError)
        ? error.when<String>(
            badRequest: () => S.of(context).badRequestNetworkError,
            unathorized: () => S.of(context).unathorizedNetworkError,
            notFound: () => S.of(context).notFoundNetworkError,
            internetConnection: () => S.of(context).internetConnectionNetworkError,
            unknown: () => S.of(context).unknownNetworkError,
          )
        : (error is DataError)
            ? error.when<String>(
                unknown: () => S.of(context).unknownDataError,
              )
            : S.of(context).unknownError;
  }

  void showErrorMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
