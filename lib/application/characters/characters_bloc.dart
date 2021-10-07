import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:super_smash_fighters/domain/character_list/character_failure.dart';
import 'package:super_smash_fighters/domain/character_list/i_character_repository.dart';
import 'package:super_smash_fighters/domain/core/character.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';
import 'package:super_smash_fighters/domain/universe_list/universe_failure.dart';
import 'package:super_smash_fighters/infrastructure/characters/character_repository.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

@injectable
class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final ICharacterRepository _characterRepository;

  CharactersBloc(this._characterRepository) : super(_Initial()) {
    on<CharactersEvent>((event, emit) {
      event.map(
        watchUniverseStarted: (event) async {
          emit(CharactersState.loadInProgress());
          var failureOrCharacters;

          if (event.universe == UniverseDomain.empty())
            failureOrCharacters = await _characterRepository.watchAll();
          else
            failureOrCharacters =
                await _characterRepository.watchFromUniverse(event.universe);
          add(CharactersEvent.charactersReceived(failureOrCharacters));
        },
        charactersReceived: (event) async {
          event.failureOrCharacters.fold(
              (failure) => {emit(CharactersState.loadFailure(failure))},
              (characters) => {emit(CharactersState.loadSuccess(characters))});
        },
        deleteAll: (event) async {
          var failureOrUnit = await _characterRepository.deleteAll();
          failureOrUnit.fold(
            (failure) => emit(CharactersState.deleteFailure(failure)),
            (_) => {
              add(CharactersEvent.watchUniverseStarted(UniverseDomain.empty()))
            },
          );
        },
      );
    });
  }
}
