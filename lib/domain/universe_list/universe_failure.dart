import 'package:freezed_annotation/freezed_annotation.dart';

part 'universe_failure.freezed.dart';

@freezed
abstract class UniverseFailure with _$UniverseFailure {
  const factory UniverseFailure.unexpectedUniverse() = _UnexpectedUniverse;
}
