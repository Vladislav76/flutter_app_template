import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/app/default_chopper_client.dart';
import 'package:template_app/src/core/persistence/default_token_storage.dart';
import 'package:template_app/src/core/persistence/token_storage.dart';
import 'package:template_app/src/features/auth/data/network/service/auth_service_api.dart';
import 'package:template_app/src/features/auth/data/network/service/demo_auth_service.dart';
import 'package:template_app/src/features/auth/domain/repository/auth_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return DefaultAuthRepository(
    service: DemoAuthService.create(client: ref.read(defaultChopperClientProvider)),
    tokenStorage: ref.read(tokenStorageProvider),
  );
});

class DefaultAuthRepository implements AuthRepository {
  const DefaultAuthRepository({
    required this.service,
    required this.tokenStorage,
  });
  final AuthServiceApi service;
  final TokenStorage tokenStorage;

  @override
  Future<void> register() async {
    await service.register();
  }

  @override
  Future<void> loginViaEmail({required String email, required String password}) async {
    final response = await service.loginViaEmail();
    final authToken = response.body;
    if (authToken != null) {
      tokenStorage.writeAuthorizationToken(authToken);
    } else {
      throw Exception('Failed login via email');
    }
  }

  @override
  Future<void> loginViaSms({required String phone, required int code}) async {
    final response = await service.loginViaSms();
    final authToken = response.body;
    if (authToken != null) {
      tokenStorage.writeAuthorizationToken(authToken);
    } else {
      throw Exception('Failed login via sms');
    }
  }

  @override
  Future<void> logout() async {
    await service.logout();
    await tokenStorage.clear();
  }
}
