import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:super_smash_fighters/domain/character_list/character_failure.dart';
import 'package:super_smash_fighters/domain/core/character.dart';

abstract class ICharacterRepository {
  Stream<Either<CharacterFailure, List<CharacterDomain>>> watchAll();
  Future<Either<CharacterFailure, List<CharacterDomain>>> watchAllOffline();
  Future<Either<CharacterFailure, Unit>> deleteAll();
}
