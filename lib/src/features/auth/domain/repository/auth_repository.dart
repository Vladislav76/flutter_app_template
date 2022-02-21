abstract class AuthRepository {
  Future<void> register();
  Future<void> loginViaEmail({required String email, required String password});
  Future<void> loginViaSms({required String phone, required int code});
  Future<void> logout();
}
