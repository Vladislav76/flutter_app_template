import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/persistence/default_token_storage.dart';
import 'package:template_app/src/core/persistence/token_storage.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/features/auth/data/repository/default_auth_repository.dart';
import 'package:template_app/src/features/auth/domain/repository/auth_repository.dart';

final initialAppStateProvider = StateNotifierProvider<InitialAppStateNotifier, ViewState<bool, Object>>((ref) {
  return InitialAppStateNotifier(
    repository: ref.read(authRepositoryProvider),
    tokenStorage: ref.read(tokenStorageProvider),
  );
});

class InitialAppStateNotifier extends StateNotifier<ViewState<bool, Object>> {
  InitialAppStateNotifier({
    required this.repository,
    required this.tokenStorage,
  }) : super(const ViewState.initial()) {
    _initialize();
  }
  final AuthRepository repository;
  final TokenStorage tokenStorage;

  void _initialize() async {
    state = const ViewState.loading();
    try {
      final authToken = await tokenStorage.readAuthorizationToken();
      state = (authToken != null) ? const ViewState.data(true) : const ViewState.data(false);
    } catch (e) {
      state = ViewState.error(e);
    }
  }
}
