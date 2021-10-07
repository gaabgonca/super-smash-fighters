part of 'universefilter_bloc.dart';

@freezed
class UniversefilterEvent with _$UniversefilterEvent {
  const factory UniversefilterEvent.started() = _Started;
  const factory UniversefilterEvent.selectedUniverse(UniverseDomain universe) =
      _SelectedUniverse;
}
