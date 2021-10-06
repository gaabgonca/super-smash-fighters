part of 'universes_bloc.dart';

@freezed
class UniversesEvent with _$UniversesEvent {
  const factory UniversesEvent.watchAllStarted() = _WatchAllUniverses;
  const factory UniversesEvent.universesReceived(
          Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses) =
      _UniversesReceived;
  const factory UniversesEvent.deleteAll() = _DeleteAllUniverses;
}
