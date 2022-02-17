// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_feature_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$SampleFeatureService extends SampleFeatureService {
  _$SampleFeatureService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SampleFeatureService;

  @override
  Future<Response<FeatureObjectDTO>> getRandomFeatureObject() {
    final $url = '/animals/rand';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<FeatureObjectDTO, FeatureObjectDTO>($request);
  }
}
