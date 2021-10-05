import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:super_smash_fighters/domain/character_list/character_failure.dart';
import 'package:super_smash_fighters/domain/core/character.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';
import 'package:super_smash_fighters/domain/universe_list/universe_failure.dart';

abstract class IUniverseRepository {
  Stream<Either<UniverseFailure, List<UniverseDomain>>> watchAll();
  Future<Either<UniverseFailure, UniverseDomain>> create(
      UniverseDomain universe);
  Future<Either<UniverseFailure, UniverseDomain>> update(
      UniverseDomain universe);
  Future<Either<UniverseFailure, UniverseDomain>> delete(
      UniverseDomain universe);
}
