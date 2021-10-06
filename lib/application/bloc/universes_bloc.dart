import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';
import 'package:super_smash_fighters/domain/universe_list/i_universe_repository.dart';
import 'package:super_smash_fighters/domain/universe_list/universe_failure.dart';
import 'package:super_smash_fighters/infrastructure/universes/universe_dto.dart';

part 'universes_event.dart';
part 'universes_state.dart';
part 'universes_bloc.freezed.dart';

@injectable
class UniversesBloc extends Bloc<UniversesEvent, UniversesState> {
  final IUniverseRepository _universeRepository;
  UniversesBloc(this._universeRepository) : super(_Initial()) {
    on<UniversesEvent>((event, emit) {
      event.map(watchAllStarted: (event) async {
        emit(UniversesState.loadInProgress());
        var failureOrUniverses = await _universeRepository.watchAll();
        add(UniversesEvent.universesReceived(failureOrUniverses));
      }, universesReceived: (event) async {
        event.failureOrUniverses.fold(
            (failure) => {emit(UniversesState.loadFailure(failure))},
            (universes) => {emit(UniversesState.loadSuccess(universes))});
      }, deleteAll: (event) async {
        var failureOrUnit = await _universeRepository.deleteAll();
        failureOrUnit.fold(
          (failure) => emit(UniversesState.deleteFailure(failure)),
          (_) => {add(UniversesEvent.watchAllStarted())},
        );
      });
    });
  }
}
