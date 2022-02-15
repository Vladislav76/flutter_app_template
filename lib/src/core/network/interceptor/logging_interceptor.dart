import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class LoggingInterceptor extends Interceptor {
  final Logger logger;

  LoggingInterceptor({required this.logger});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.d(
      '* * * Network request * * *\n'
      '- URI         : ${options.uri}\n'
      '- Headers     : ${options.headers}\n'
      '- Base URL    : ${options.baseUrl}\n'
      '- Query params: ${options.queryParameters}\n'
      '- Data        : ${options.data}',
    );
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d(
      '* * * Network response * * *\n'
      '- Code: ${response.statusCode}\n'
      '- Data: ${response.data.toString()}',
    );
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    logger.d(
      '* * * Network error * * *\n'
      '- Error   : ${err.error}\n'
      '- Message : ${err.message}\n'
      '- Code    : ${err.response?.statusCode}\n'
      '- Response: ${err.response}',
    );
    handler.next(err);
  }
}
