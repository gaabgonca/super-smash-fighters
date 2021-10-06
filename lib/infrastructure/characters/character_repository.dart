import 'dart:convert';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:super_smash_fighters/domain/character_list/character_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:super_smash_fighters/domain/character_list/i_character_repository.dart';
import 'package:super_smash_fighters/domain/core/character.dart';
import 'package:super_smash_fighters/infrastructure/characters/character_dto.dart';

@LazySingleton(as: ICharacterRepository)
class CharacterRepository implements ICharacterRepository {
  final Client httpClient;
  final Isar isar;

  final String url = 'https://593cdf8fb56f410011e7e7a9.mockapi.io/fighters';

  CharacterRepository(this.httpClient, this.isar);

  @override
  Future<Either<CharacterFailure, Unit>> deleteAll() async {
    final characterCollection = isar.getCollection('Character');
    try {
      await isar.writeTxn((_) async {
        await characterCollection.where().deleteAll();
      });
      return (right(unit));
    } catch (e) {
      return left(CharacterFailure.deleteFailure());
    }
  }

  @override
  Future<Either<CharacterFailure, List<CharacterDomain>>> watchAll() async {
    final characterCollection = isar.getCollection('Character');
    var cachedCharacters = await characterCollection.where().findAll();
    if (cachedCharacters.isEmpty) {
      try {
        final characters = await getCharacters();
        await isar.writeTxn((_) async {
          await characterCollection.putAll(characters);
        });
      } catch (e) {
        return left(CharacterFailure.unexpected());
      }
    }
    cachedCharacters = await characterCollection.where().findAll();
    final charactersDomain = cachedCharacters
        .map((characterDto) => characterDto.toDomain() as CharacterDomain)
        .toList();
    return right(charactersDomain);
  }

  Future<List<Character>> getCharacters() async {
    final Response response = await httpClient.get(Uri.parse(url));
    final decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes)) as List<dynamic>;
    final characters = decodedResponse
        .map((characterData) => Character.fromJson(characterData))
        .toList();
    return characters;
  }

  @override
  Future<Either<CharacterFailure, List<CharacterDomain>>>
      watchAllOffline() async {
    final characterCollection = isar.getCollection('Character');
    var cachedCharacters = await characterCollection.where().findAll();
    if (cachedCharacters.isEmpty) {
      return right([]);
    }
    final charactersDomain = cachedCharacters
        .map((characterDto) => characterDto.toDomain() as CharacterDomain)
        .toList();
    return right(charactersDomain);
  }
}
