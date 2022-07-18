import 'package:flutter_app_template/features/skins/domain/entity/skin.dart';
import 'package:flutter_app_template/features/skins/domain/repository/skin_repo.dart';
import 'package:flutter_app_template/packages/entity/data_error.dart';
import 'package:flutter_app_template/packages/persistense/repository/repository.dart';
import 'package:flutter_app_template/util/either.dart';

class SkinRepositoryImpl with Repository implements SkinRepository {
  @override
  Future<Either<DataError, List<Skin>>> getSkins() async {
    return const Either.right([Skin(name: 'Hedgehog', unicodeCharacter: '🦔')]);
  }
}
