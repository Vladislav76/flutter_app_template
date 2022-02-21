import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/core/state/view_state.dart';
import 'package:template_app/src/features/auth/data/repository/default_auth_repository.dart';
import 'package:template_app/src/features/auth/domain/repository/auth_repository.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, ViewState<void, Object>>((ref) {
  return AuthStateNotifier(
    repository: ref.read(authRepositoryProvider),
  );
});

class AuthStateNotifier extends StateNotifier<ViewState<void, Object>> {
  AuthStateNotifier({required this.repository}) : super(const ViewState.initial());
  final AuthRepository repository;

  void login() async {
    state = const ViewState.loading();
    try {
      await repository.loginViaEmail(email: 'email', password: 'password');
      state = const ViewState.data(ViewState.voidValue);
      state = const ViewState.initial();
    } catch (e) {
      state = ViewState.error(e);
    }
  }

  void logout() async {
    state = const ViewState.loading();
    try {
      await repository.logout();
      state = const ViewState.data(ViewState.voidValue);
      state = const ViewState.initial();
    } catch (e) {
      state = ViewState.error(e);
    }
  }
}
