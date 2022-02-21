import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;
import 'package:template_app/src/features/auth/data/network/service/auth_service_api.dart';

part 'demo_auth_service.chopper.dart';

@ChopperApi()
abstract class DemoAuthService extends ChopperService implements AuthServiceApi {
  DemoAuthService();

  factory DemoAuthService.create({ChopperClient? client}) => _$DemoAuthService(client);

  @override
  Future<Response<String>> loginViaEmail() async {
    // TODO: implement loginViaEmail
    return Response(http.Response('', 200), '9b8fb0d3-347e-421b-a984-e6e6937a4fcd');
  }

  @override
  Future<Response<String>> loginViaSms() async {
    // TODO: implement loginViaSms
    throw UnimplementedError();
  }

  @override
  Future<Response> logout() async {
    // TODO: implement logout
    return Response(http.Response('', 200), null);
  }

  @override
  Future<Response> register() async {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<Response<String>> refreshToken() async {
    return Response(http.Response('', 200), '9b8fb0d3-347e-421b-a984-e6e6937a4fcd');
  }
}
