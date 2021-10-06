import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:super_smash_fighters/domain/universe_list/i_universe_repository.dart';
import 'package:super_smash_fighters/domain/universe_list/universe_failure.dart';
import 'package:super_smash_fighters/infrastructure/universes/universe_dto.dart';

@LazySingleton(as: IUniverseRepository)
class UniverseRepository implements IUniverseRepository {
  final Isar isar;
  final Client httpClient;

  final String url = 'https://593cdf8fb56f410011e7e7a9.mockapi.io/universes';

  UniverseRepository(this.isar, this.httpClient);

  @override
  Future<Either<UniverseFailure, List<UniverseDomain>>> watchAll() async {
    final universesCollection = isar.getCollection('Universe');
    var cachedUniverses = await universesCollection.where().findAll();
    if (cachedUniverses.isEmpty) {
      try {
        final universes = await getUniverses();
        await isar.writeTxn((_) async {
          await universesCollection.putAll(universes);
        });
      } catch (e) {
        return left(UniverseFailure.unexpectedUniverse());
      }
    }
    cachedUniverses = await universesCollection.where().findAll();
    var universesDomain = cachedUniverses
        .map((universeDto) => universeDto.toDomain() as UniverseDomain)
        .toList();
    universesDomain.insert(0, UniverseDomain.empty());
    return right(universesDomain);
  }

  @override
  Future<Either<UniverseFailure, Unit>> deleteAll() async {
    final universesCollection = isar.getCollection('Universe');
    try {
      await isar.writeTxn((_) async {
        await universesCollection.where().deleteAll();
      });
      return (right(unit));
    } catch (e) {
      return left(UniverseFailure.deleteFailure());
    }
  }

  Future<List<Universe>> getUniverses() async {
    final Response response = await httpClient.get(Uri.parse(url));
    final decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes)) as List<dynamic>;
    final universes = decodedResponse
        .map((universeData) => Universe.fromJson(universeData))
        .toList();
    return universes;
  }

  @override
  Future<Either<UniverseFailure, List<UniverseDomain>>>
      watchAllOffline() async {
    final universesCollection = isar.getCollection('Universe');
    var cachedUniverses = await universesCollection.where().findAll();
    if (cachedUniverses.isEmpty) {
      return right([]);
    }
    var universesDomain = cachedUniverses
        .map((universeDto) => universeDto.toDomain() as UniverseDomain)
        .toList();
    universesDomain.insert(0, UniverseDomain.empty());
    return right(universesDomain);
  }
}
