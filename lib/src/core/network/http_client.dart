import 'package:dio/dio.dart';

import 'package:template_app/src/core/utils/default_logger.dart';
import 'package:template_app/src/core/network/interceptor/logging_interceptor.dart';

class HttpClientBuilder {
  static Dio buildDefaultClient({
    required String baseUrl,
    required String authTokenHeaderKey,
    required Future<String?> Function() extractAuthToken,
    required void Function(dynamic) handleSuccessResponse,
  }) {
    final client = Dio(BaseOptions(baseUrl: baseUrl));
    client.interceptors.addAll([
      LoggingInterceptor(logger: DefaultLogger()),
    ]);
    return client;
  }
}
