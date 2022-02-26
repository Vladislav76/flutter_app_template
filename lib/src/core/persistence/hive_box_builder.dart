import 'package:hive_flutter/hive_flutter.dart';

class HiveBoxBuilder {
  static Future<Box<T>> buildBox<T>({
    required TypeAdapter<T> adapter,
    required String name,
  }) async {
    Hive.registerAdapter(adapter);
    final box = await Hive.openBox<T>(name);

    return box;
  }
}
