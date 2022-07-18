import 'dart:async';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter_app_template/packages/entity/data_error.dart';
import 'package:flutter_app_template/packages/entity/network_error.dart';
import 'package:flutter_app_template/util/either.dart';
import 'package:logging/logging.dart';

mixin Repository {
  static final logger = Logger('Repository');

  Future<Either<DataError, T>> requestData<T>({
    required Future<T> request,
    void Function(T)? onSuccess,
  }) async {
    late Either<DataError, T> result;
    // Success
    try {
      final data = await request;
      onSuccess?.call(data);
      result = Either.right(data);
    }
    // Failure: No internet connection
    on SocketException catch (e) {
      logger.info('Network error - $e');
      result = const Either.left(DataError.network(NetworkError.noInternetConnection()));
    }
    // Failure: Known data error
    on DataError catch (e) {
      logger.info('Data error - $e');
      result = Either.left(e);
    }
    // Failure: Unknown data error
    catch (e, st) {
      logger.info('Unknown error - $e');
      result = Either.left(DataError.unknown(e, stackTrace: st));
    }

    return result;
  }

  Future<Either<DataError, T>> requestNetworkData<T>({
    required Future<Response<T>> request,
    void Function(T)? onSuccess,
    T? defaultData,
  }) {
    return requestData(
      request: Future(
        () async {
          final response = await request;

          return response.body ?? defaultData ?? (throw const DataError.noData());
        },
      ),
      onSuccess: onSuccess,
    );
  }
}
