part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = _Initial;
  const factory CharactersState.loadInProgress() = _CharactersLoadInProgress;
  const factory CharactersState.loadSuccess(
          List<CharacterDomain> characters, bool hasFilter) =
      _CharactersLoadSuccess;
  const factory CharactersState.loadFailure(CharacterFailure failure) =
      _CharactersLoadFailure;
  const factory CharactersState.deleteFailure(CharacterFailure failure) =
      _CharactersDeleteFailure;
}
