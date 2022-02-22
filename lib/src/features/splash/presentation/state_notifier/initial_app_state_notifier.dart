import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/state/default_state_notifier.dart';
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

class InitialAppStateNotifier extends DefaultStateNotifier<bool> {
  InitialAppStateNotifier({
    required this.repository,
    required this.tokenStorage,
  }) {
    _initialize();
  }
  final AuthRepository repository;
  final TokenStorage tokenStorage;

  void _initialize() async {
    tryRequest(
      request: () async {
        final authToken = await tokenStorage.readAuthorizationToken();

        return authToken != null;
      },
    );
  }
}
