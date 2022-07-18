// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:template_app/src/core/data/storage/token_storage.dart';

// final tokenStorageProvider = Provider<TokenStorage>((_) => DefaultTokenStorage());

// class DefaultTokenStorage implements TokenStorage {
//   static const _authTokenKey = 'auth_token';
//   final _storage = const FlutterSecureStorage();

//   @override
//   Future<String?> readAuthorizationToken() => _storage.read(key: _authTokenKey);

//   @override
//   Future<void> writeAuthorizationToken(String token) => _storage.write(key: _authTokenKey, value: token);

//   @override
//   Future<void> clear() => _storage.deleteAll();
// }
