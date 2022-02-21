import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/architecture/default_state_notifier.dart';
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

  void login() async {
    final isSuccessful = await tryAction(
      action: () => repository.loginViaEmail(email: 'email', password: 'password'),
    );
    if (isSuccessful) {
      state = const ViewState.initial();
    }
  }

  void logout() async {
    final isSuccessful = await tryAction(
      action: () => repository.logout(),
    );
    if (isSuccessful) {
      state = const ViewState.initial();
    }
  }
}
