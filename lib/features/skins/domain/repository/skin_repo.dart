import 'package:flutter_app_template/features/skins/domain/entity/skin.dart';
import 'package:flutter_app_template/packages/entity/data_error.dart';
import 'package:flutter_app_template/util/either.dart';

abstract class SkinRepository {
  Future<Either<DataError, List<Skin>>> getSkins();
} 