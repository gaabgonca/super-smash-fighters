import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'filters_event.dart';
part 'filters_state.dart';
part 'filters_bloc.freezed.dart';

@injectable
class FiltersBloc extends Bloc<FiltersEvent, FiltersState> {
  FiltersBloc() : super(FiltersState.initial()) {
    on<FiltersEvent>((event, emit) {
      event.map(
        started: (event) {},
        sortChanged: (event) {
          emit(state.copyWith(sort: event.sort));
        },
        pricesChanged: (event) {
          emit(state.copyWith(
              minPrice: event.minPrice, maxPrice: event.maxPrice));
        },
        rateChanged: (event) {
          emit(state.copyWith(rate: event.rate));
        },
        reset: (event) {
          emit(FiltersState.initial());
        },
        close: (event) {
          emit(state);
        },
      );
    });
  }
}
