part of 'universefilter_bloc.dart';

@freezed
class UniversefilterState with _$UniversefilterState {
  const factory UniversefilterState({required UniverseDomain universe}) =
      _UniverseFilterState;

  factory UniversefilterState.initial() =>
      UniversefilterState(universe: UniverseDomain.empty());
}
