import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/state/default_state_notifier.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/features/auth/data/repository/default_auth_repository.dart';
import 'package:template_app/src/features/auth/domain/repository/auth_repository.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, ViewState<void, Object>>((ref) {
  return AuthStateNotifier(
    repository: ref.read(authRepositoryProvider),
  );
});

class AuthStateNotifier extends DefaultStateNotifier<void> {
  AuthStateNotifier({required this.repository});
  final AuthRepository repository;

  void login() {
    makeRequest(
      request: () => repository.login(email: 'email', password: 'password'),
      onSuccess: (_) => state = const ViewState.initial(),
    );
  }

  void logout() async {
    makeRequest(
      request: () => repository.logout(),
      onSuccess: (_) => state = const ViewState.initial(),
    );
  }
}
