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
  Future<Either<UniverseFailure, UniverseDomain>> create(
      UniverseDomain universe) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<UniverseFailure, UniverseDomain>> delete(
      UniverseDomain universe) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<UniverseFailure, UniverseDomain>> update(
      UniverseDomain universe) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<UniverseFailure, List<UniverseDomain>>> watchAll() async* {
    final universesCollection = isar.getCollection('Universe');
    var cachedUniverses = await universesCollection.where().findAll();
    if (cachedUniverses.isEmpty) {
      try {
        final Response response = await httpClient.get(Uri.parse(url));
        final String rawString = response.body;
        final decodedResponse = jsonDecode(utf8.decode(response.bodyBytes))
            as List<Map<String, dynamic>>;
        final universes = decodedResponse
            .map((universeData) => Universe.fromJson(universeData))
            .toList();
        await isar.writeTxn((_) async {
          await universesCollection.putAll(universes);
        });
        List cachedUniverses = await universesCollection.where().findAll();
        final universesDomain = cachedUniverses
            .map((universeDto) => universeDto.toDomain() as UniverseDomain)
            .toList();
        yield right(universesDomain);
      } catch (e) {
        yield left(UniverseFailure.unexpectedUniverse());
      }
    }
  }
}
