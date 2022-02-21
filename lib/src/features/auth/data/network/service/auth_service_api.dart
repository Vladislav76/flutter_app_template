import 'package:chopper/chopper.dart';

abstract class AuthServiceApi {
  Future<Response> register();
  Future<Response<String>> loginViaEmail();
  Future<Response<String>> loginViaSms();
  Future<Response> logout();
  Future<Response<String>> refreshToken();
}