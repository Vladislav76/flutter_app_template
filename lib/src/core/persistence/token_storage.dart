abstract class TokenStorage {
  Future<String?> readAuthorizationToken();
  Future<void> writeAuthorizationToken(String token);
}