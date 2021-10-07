part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.watchUniverseStarted(UniverseDomain universe,
      {FiltersState? filtersState}) = _WatchUniverseCharacters;
  const factory CharactersEvent.charactersReceived(
      Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
      {FiltersState? filtersState}) = _CharactersReceived;
  const factory CharactersEvent.deleteAll(UniverseDomain universe) =
      _DeleteAllCharacters;
}
