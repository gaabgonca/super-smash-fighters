import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:super_smash_fighters/domain/character_list/character_failure.dart';
import 'package:super_smash_fighters/domain/core/character.dart';

abstract class ICharacterRepository {
  Stream<Either<CharacterFailure, KtList<CharacterDomain>>> watchAll();
  Stream<Either<CharacterFailure, KtList<CharacterDomain>>> watchFiltered();
  Future<Either<CharacterFailure, CharacterDomain>> create(
      CharacterDomain character);
  Future<Either<CharacterFailure, CharacterDomain>> update(
      CharacterDomain character);
  Future<Either<CharacterFailure, CharacterDomain>> delete(
      CharacterDomain character);
}
