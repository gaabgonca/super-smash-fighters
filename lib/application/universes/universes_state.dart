part of 'universes_bloc.dart';

@freezed
class UniversesState with _$UniversesState {
  const factory UniversesState.initial() = _Initial;
  const factory UniversesState.loadInProgress() = _UniversesLoadInProgress;
  const factory UniversesState.loadSuccess(List<UniverseDomain> universes) =
      _UniversesLoadSuccess;
  const factory UniversesState.loadFailure(UniverseFailure failure) =
      _UniversesLoadFailure;
  const factory UniversesState.deleteFailure(UniverseFailure failure) =
      _UniversesDeleteFailure;
}
