import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:super_smash_fighters/application/filters/bloc/filters_bloc.dart';
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

  CharactersBloc(this._characterRepository) : super(CharactersState.initial()) {
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
          add(CharactersEvent.charactersReceived(failureOrCharacters,
              filtersState: event.filtersState));
        },
        charactersReceived: (event) async {
          event.failureOrCharacters
              .fold((failure) => {emit(CharactersState.loadFailure(failure))},
                  (characters) {
            List<CharacterDomain> filteredCharacters = characters
              ..sort((a, b) => a.name.compareTo(b.name));
            bool hasFilters = false;
            if (event.filtersState != null) {
              filteredCharacters = _filter(characters, event.filtersState!);
              hasFilters = true;
            }
            emit(CharactersState.loadSuccess(filteredCharacters, hasFilters));
          });
        },
        deleteAll: (event) async {
          var failureOrUnit = await _characterRepository.deleteAll();
          failureOrUnit.fold(
            (failure) => emit(CharactersState.deleteFailure(failure)),
            (_) => {add(CharactersEvent.watchUniverseStarted(event.universe))},
          );
        },
      );
    });
  }

  List<CharacterDomain> _filter(
      List<CharacterDomain> allCharacters, FiltersState filtersState) {
    var characters = allCharacters;
    characters.sort((a, b) {
      switch (filtersState.sort) {
        case 'Ascending':
          return a.name.compareTo(b.name);
        case 'Descending':
          return b.name.compareTo(a.name);
        case 'rate':
          return b.rate.compareTo(a.rate);
        case 'downloads':
          return b.downloads.compareTo(a.downloads);
        default:
          return a.name.compareTo(b.name);
      }
    });
    characters = characters
        .where((character) =>
            double.parse(character.price) <= filtersState.maxPrice! &&
            double.parse(character.price) >= filtersState.minPrice!)
        .toList();
    if (filtersState.rate != 0) {
      characters = characters
          .where((character) => character.rate == filtersState.rate)
          .toList();
    }
    return characters;
  }
}
