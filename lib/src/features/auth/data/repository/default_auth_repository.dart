import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/app/default_chopper_client.dart';
import 'package:template_app/src/core/persistence/default_repository.dart';
import 'package:template_app/src/core/persistence/default_token_storage.dart';
import 'package:template_app/src/core/persistence/token_storage.dart';
import 'package:template_app/src/core/utils/either.dart';
import 'package:template_app/src/features/auth/data/network/service/auth_service_api.dart';
import 'package:template_app/src/features/auth/data/network/service/demo_auth_service.dart';
import 'package:template_app/src/features/auth/domain/repository/auth_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return DefaultAuthRepository(
    service: DemoAuthService.create(client: ref.read(chopperClientProvider)),
    tokenStorage: ref.read(tokenStorageProvider),
  );
});

class DefaultAuthRepository extends DefaultRepository implements AuthRepository {
  DefaultAuthRepository({
    required this.service,
    required this.tokenStorage,
  });
  final AuthServiceApi service;
  final TokenStorage tokenStorage;

  @override
  Future<Either<Object, void>> register() {
    return makeNetworkRequest(request: () => service.register());
  }

  @override
  Future<Either<Object, void>> login({required String email, required String password}) async {
    final responseEvent = await makeNetworkRequest<String>(
      request: () => service.loginViaEmail(),
      customNullDataError: Exception('Failed login via email'), // TODO: create custom error
      onDataReceived: (data) => tokenStorage.writeAuthorizationToken(data),
    );

    return responseEvent;
  }

  @override
  Future<Either<Object, void>> logout() async {
    final responseEvent = await makeNetworkRequest(
      request: () => service.logout(),
      onDataReceived: (_) => tokenStorage.clear(),
      defaultData: {},
    );

    // Emulate delay of network request
    await Future.delayed(const Duration(seconds: 2));

    return responseEvent;
  }

  @override
  Future<Either<Object, bool>> isAuthorized() {
    return makeRequest(() async {
      final authToken = await tokenStorage.readAuthorizationToken();

      return authToken != null;
    });
  }
}
