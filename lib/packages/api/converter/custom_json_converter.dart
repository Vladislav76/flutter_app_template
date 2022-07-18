import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class CustomJsonConverter implements Converter {
  const CustomJsonConverter({required this.factories});
  final Map<Type, JsonFactory> factories;
  final _jsonConverter = const JsonConverter();

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(Response response) async {
    return compute<void, Response<BodyType>>(
      (_) async {
        final jsonConvertedResponse = _jsonConverter.convertResponse(response);

        return jsonConvertedResponse.copyWith<BodyType>(body: _decode<InnerType>(jsonConvertedResponse.body));
      },
      {},
    );
  }

  @override
  FutureOr<Request> convertRequest(Request request) {
    return _jsonConverter.convertRequest(request);
  }

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
    if (entity is Map<String, dynamic>) return entity.containsKey('response') ? _decode<T>(entity['response']) : _decodeMap<T>(entity);

    return entity;
  }
}
