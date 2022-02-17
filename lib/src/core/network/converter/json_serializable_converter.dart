import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class JsonSerializableConverter implements Converter {
  const JsonSerializableConverter({required this.factories});
  final Map<Type, JsonFactory> factories;
  final _jsonConverter = const JsonConverter();

  T? _decodeMap<T>(Map<String, dynamic> values) {
    /// Get jsonFactory using Type parameters
    /// if not found or invalid, throw error or return null
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      /// throw serializer not found error;
      return null;
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) => values.where((v) => v != null).map<T>((v) => _decode<T>(v)).toList();

  dynamic _decode<T>(dynamic entity) {
    if (entity is Iterable) return _decodeList<T>(entity);
    if (entity is Map<String, dynamic>) return _decodeMap<T>(entity);

    return entity;
  }

  @override
  Future<Response<ResultType>> convertResponse<ResultType, Item>(Response response) async {
    return compute<void, Response<ResultType>>(
      (_) async {
        final jsonRes = _jsonConverter.convertResponse(response);

        return jsonRes.copyWith<ResultType>(body: _decode<Item>(jsonRes.body));
      },
      {},
    );
  }

  @override
  FutureOr<Request> convertRequest(Request request) {
    return _jsonConverter.convertRequest(request);
  }

  // TODO: explore
  // Response convertError<ResultType, Item>(Response response) {
  //   // Uses [JsonConverter] to decode json
  //   final jsonRes = super.convertError(response);
  //   return jsonRes.copyWith<ResourceError>(
  //     body: ResourceError.fromJsonFactory(jsonRes.body),
  //   );
  // }
}
