part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.watchUniverseStarted(UniverseDomain universe) =
      _WatchUniverseCharacters;
  const factory CharactersEvent.charactersReceived(
          Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters) =
      _CharactersReceived;
  const factory CharactersEvent.deleteAll() = _DeleteAllCharacters;
}
