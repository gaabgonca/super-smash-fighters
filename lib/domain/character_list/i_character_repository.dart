import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:super_smash_fighters/domain/character_list/character_failure.dart';
import 'package:super_smash_fighters/domain/core/character.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';

abstract class ICharacterRepository {
  Future<Either<CharacterFailure, List<CharacterDomain>>> watchAll();
  Future<Either<CharacterFailure, List<CharacterDomain>>> watchAllOffline();
  Future<Either<CharacterFailure, List<CharacterDomain>>> watchFromUniverse(
      UniverseDomain universeDomain);
  Future<Either<CharacterFailure, List<CharacterDomain>>>
      watchFromUniverseOffline(UniverseDomain universe);
  Future<Either<CharacterFailure, Unit>> deleteAll();
}
