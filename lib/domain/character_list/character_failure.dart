import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_failure.freezed.dart';

@freezed
abstract class CharacterFailure with _$CharacterFailure {
  const factory CharacterFailure.unexpected() = _Unexpected;
  const factory CharacterFailure.deleteFailure() = _DeleteFailureCharacter;
}
