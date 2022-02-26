import 'package:template_app/src/core/utils/either.dart';

abstract class AuthRepository {
  Future<Either<Object, void>> register();
  Future<Either<Object, void>> login({required String email, required String password});
  Future<Either<Object, void>> logout();
  Future<Either<Object, bool>> isAuthorized();
}
