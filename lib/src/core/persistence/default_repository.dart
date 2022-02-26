import 'dart:async';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:template_app/src/core/error/data_error.dart';
import 'package:template_app/src/core/error/network_error.dart';
import 'package:template_app/src/core/utils/either.dart';

abstract class DefaultRepository {
  DefaultRepository();

  Future<Either<Object, TData>> makeRequest<TData>(Future<TData> Function() request) async {
    late Either<Object, TData> result;
    try {
      final data = await request();
      result = Either.right(data);
    } on SocketException catch (e) {
      debugPrint('[Repository] Network error - $e');
      result = const Either.left(NetworkError.internetConnection());
    } on NetworkError catch (e) {
      debugPrint('[Repository] Network error - $e');
      result = Either.left(e);
    } catch (e) {
      debugPrint('[Repository] Unknown error - $e');
      result = const Either.left(DataError.unknown());
    }

    return result;
  }

  Future<Either<Object, TData>> makeNetworkRequest<TData>({
    required Future<Response<TData>> Function() request,
    Object customNullDataError = const NetworkError.unknown(),
    void Function(TData)? onDataReceived,
    TData? defaultData,
  }) async {
    return makeRequest(() async {
      final response = await request();
      final data = response.body;
      if (data != null) {
        onDataReceived?.call(data);

        return data;
      } else {
        // TODO: add new error type (no data)
        return defaultData ?? (throw customNullDataError);
      }
    });
  }
}
