import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';

part 'universefilter_event.dart';
part 'universefilter_state.dart';
part 'universefilter_bloc.freezed.dart';

@injectable
class UniversefilterBloc
    extends Bloc<UniversefilterEvent, UniversefilterState> {
  UniversefilterBloc() : super(UniversefilterState.initial()) {
    on<UniversefilterEvent>((event, emit) {
      event.map(
        started: (event) {},
        selectedUniverse: (event) {
          emit(state.copyWith(universe: event.universe));
        },
      );
    });
  }
}
