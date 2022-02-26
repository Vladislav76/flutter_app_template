import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/state/default_state_notifier.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/features/auth/data/repository/default_auth_repository.dart';
import 'package:template_app/src/features/auth/domain/repository/auth_repository.dart';

final initialAppStateProvider = StateNotifierProvider<InitialAppStateNotifier, ViewState<bool, Object>>((ref) {
  return InitialAppStateNotifier(
    repository: ref.read(authRepositoryProvider),
  );
});

class InitialAppStateNotifier extends DefaultStateNotifier<bool> {
  InitialAppStateNotifier({
    required this.repository,
  }) {
    _initialize();
  }
  final AuthRepository repository;

  void _initialize() async {
    makeRequest(request: () => repository.isAuthorized());
  }
}
