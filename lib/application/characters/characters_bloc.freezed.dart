// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CharactersEventTearOff {
  const _$CharactersEventTearOff();

  _WatchUniverseCharacters watchUniverseStarted(UniverseDomain universe,
      {FiltersState? filtersState}) {
    return _WatchUniverseCharacters(
      universe,
      filtersState: filtersState,
    );
  }

  _CharactersReceived charactersReceived(
      Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
      {FiltersState? filtersState}) {
    return _CharactersReceived(
      failureOrCharacters,
      filtersState: filtersState,
    );
  }

  _DeleteAllCharacters deleteAll(UniverseDomain universe) {
    return _DeleteAllCharacters(
      universe,
    );
  }
}

/// @nodoc
const $CharactersEvent = _$CharactersEventTearOff();

/// @nodoc
mixin _$CharactersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniverseDomain universe, FiltersState? filtersState)
        watchUniverseStarted,
    required TResult Function(
            Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
            FiltersState? filtersState)
        charactersReceived,
    required TResult Function(UniverseDomain universe) deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniverseDomain universe, FiltersState? filtersState)?
        watchUniverseStarted,
    TResult Function(
            Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
            FiltersState? filtersState)?
        charactersReceived,
    TResult Function(UniverseDomain universe)? deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniverseDomain universe, FiltersState? filtersState)?
        watchUniverseStarted,
    TResult Function(
            Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
            FiltersState? filtersState)?
        charactersReceived,
    TResult Function(UniverseDomain universe)? deleteAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchUniverseCharacters value)
        watchUniverseStarted,
    required TResult Function(_CharactersReceived value) charactersReceived,
    required TResult Function(_DeleteAllCharacters value) deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchUniverseCharacters value)? watchUniverseStarted,
    TResult Function(_CharactersReceived value)? charactersReceived,
    TResult Function(_DeleteAllCharacters value)? deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchUniverseCharacters value)? watchUniverseStarted,
    TResult Function(_CharactersReceived value)? charactersReceived,
    TResult Function(_DeleteAllCharacters value)? deleteAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  final CharactersEvent _value;
  // ignore: unused_field
  final $Res Function(CharactersEvent) _then;
}

/// @nodoc
abstract class _$WatchUniverseCharactersCopyWith<$Res> {
  factory _$WatchUniverseCharactersCopyWith(_WatchUniverseCharacters value,
          $Res Function(_WatchUniverseCharacters) then) =
      __$WatchUniverseCharactersCopyWithImpl<$Res>;
  $Res call({UniverseDomain universe, FiltersState? filtersState});

  $UniverseDomainCopyWith<$Res> get universe;
  $FiltersStateCopyWith<$Res>? get filtersState;
}

/// @nodoc
class __$WatchUniverseCharactersCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$WatchUniverseCharactersCopyWith<$Res> {
  __$WatchUniverseCharactersCopyWithImpl(_WatchUniverseCharacters _value,
      $Res Function(_WatchUniverseCharacters) _then)
      : super(_value, (v) => _then(v as _WatchUniverseCharacters));

  @override
  _WatchUniverseCharacters get _value =>
      super._value as _WatchUniverseCharacters;

  @override
  $Res call({
    Object? universe = freezed,
    Object? filtersState = freezed,
  }) {
    return _then(_WatchUniverseCharacters(
      universe == freezed
          ? _value.universe
          : universe // ignore: cast_nullable_to_non_nullable
              as UniverseDomain,
      filtersState: filtersState == freezed
          ? _value.filtersState
          : filtersState // ignore: cast_nullable_to_non_nullable
              as FiltersState?,
    ));
  }

  @override
  $UniverseDomainCopyWith<$Res> get universe {
    return $UniverseDomainCopyWith<$Res>(_value.universe, (value) {
      return _then(_value.copyWith(universe: value));
    });
  }

  @override
  $FiltersStateCopyWith<$Res>? get filtersState {
    if (_value.filtersState == null) {
      return null;
    }

    return $FiltersStateCopyWith<$Res>(_value.filtersState!, (value) {
      return _then(_value.copyWith(filtersState: value));
    });
  }
}

/// @nodoc

class _$_WatchUniverseCharacters implements _WatchUniverseCharacters {
  const _$_WatchUniverseCharacters(this.universe, {this.filtersState});

  @override
  final UniverseDomain universe;
  @override
  final FiltersState? filtersState;

  @override
  String toString() {
    return 'CharactersEvent.watchUniverseStarted(universe: $universe, filtersState: $filtersState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchUniverseCharacters &&
            (identical(other.universe, universe) ||
                const DeepCollectionEquality()
                    .equals(other.universe, universe)) &&
            (identical(other.filtersState, filtersState) ||
                const DeepCollectionEquality()
                    .equals(other.filtersState, filtersState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(universe) ^
      const DeepCollectionEquality().hash(filtersState);

  @JsonKey(ignore: true)
  @override
  _$WatchUniverseCharactersCopyWith<_WatchUniverseCharacters> get copyWith =>
      __$WatchUniverseCharactersCopyWithImpl<_WatchUniverseCharacters>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniverseDomain universe, FiltersState? filtersState)
        watchUniverseStarted,
    required TResult Function(
            Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
            FiltersState? filtersState)
        charactersReceived,
    required TResult Function(UniverseDomain universe) deleteAll,
  }) {
    return watchUniverseStarted(universe, filtersState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniverseDomain universe, FiltersState? filtersState)?
        watchUniverseStarted,
    TResult Function(
            Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
            FiltersState? filtersState)?
        charactersReceived,
    TResult Function(UniverseDomain universe)? deleteAll,
  }) {
    return watchUniverseStarted?.call(universe, filtersState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniverseDomain universe, FiltersState? filtersState)?
        watchUniverseStarted,
    TResult Function(
            Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
            FiltersState? filtersState)?
        charactersReceived,
    TResult Function(UniverseDomain universe)? deleteAll,
    required TResult orElse(),
  }) {
    if (watchUniverseStarted != null) {
      return watchUniverseStarted(universe, filtersState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchUniverseCharacters value)
        watchUniverseStarted,
    required TResult Function(_CharactersReceived value) charactersReceived,
    required TResult Function(_DeleteAllCharacters value) deleteAll,
  }) {
    return watchUniverseStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchUniverseCharacters value)? watchUniverseStarted,
    TResult Function(_CharactersReceived value)? charactersReceived,
    TResult Function(_DeleteAllCharacters value)? deleteAll,
  }) {
    return watchUniverseStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchUniverseCharacters value)? watchUniverseStarted,
    TResult Function(_CharactersReceived value)? charactersReceived,
    TResult Function(_DeleteAllCharacters value)? deleteAll,
    required TResult orElse(),
  }) {
    if (watchUniverseStarted != null) {
      return watchUniverseStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchUniverseCharacters implements CharactersEvent {
  const factory _WatchUniverseCharacters(UniverseDomain universe,
      {FiltersState? filtersState}) = _$_WatchUniverseCharacters;

  UniverseDomain get universe => throw _privateConstructorUsedError;
  FiltersState? get filtersState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WatchUniverseCharactersCopyWith<_WatchUniverseCharacters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CharactersReceivedCopyWith<$Res> {
  factory _$CharactersReceivedCopyWith(
          _CharactersReceived value, $Res Function(_CharactersReceived) then) =
      __$CharactersReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
      FiltersState? filtersState});

  $FiltersStateCopyWith<$Res>? get filtersState;
}

/// @nodoc
class __$CharactersReceivedCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$CharactersReceivedCopyWith<$Res> {
  __$CharactersReceivedCopyWithImpl(
      _CharactersReceived _value, $Res Function(_CharactersReceived) _then)
      : super(_value, (v) => _then(v as _CharactersReceived));

  @override
  _CharactersReceived get _value => super._value as _CharactersReceived;

  @override
  $Res call({
    Object? failureOrCharacters = freezed,
    Object? filtersState = freezed,
  }) {
    return _then(_CharactersReceived(
      failureOrCharacters == freezed
          ? _value.failureOrCharacters
          : failureOrCharacters // ignore: cast_nullable_to_non_nullable
              as Either<CharacterFailure, List<CharacterDomain>>,
      filtersState: filtersState == freezed
          ? _value.filtersState
          : filtersState // ignore: cast_nullable_to_non_nullable
              as FiltersState?,
    ));
  }

  @override
  $FiltersStateCopyWith<$Res>? get filtersState {
    if (_value.filtersState == null) {
      return null;
    }

    return $FiltersStateCopyWith<$Res>(_value.filtersState!, (value) {
      return _then(_value.copyWith(filtersState: value));
    });
  }
}

/// @nodoc

class _$_CharactersReceived implements _CharactersReceived {
  const _$_CharactersReceived(this.failureOrCharacters, {this.filtersState});

  @override
  final Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters;
  @override
  final FiltersState? filtersState;

  @override
  String toString() {
    return 'CharactersEvent.charactersReceived(failureOrCharacters: $failureOrCharacters, filtersState: $filtersState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharactersReceived &&
            (identical(other.failureOrCharacters, failureOrCharacters) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCharacters, failureOrCharacters)) &&
            (identical(other.filtersState, filtersState) ||
                const DeepCollectionEquality()
                    .equals(other.filtersState, filtersState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCharacters) ^
      const DeepCollectionEquality().hash(filtersState);

  @JsonKey(ignore: true)
  @override
  _$CharactersReceivedCopyWith<_CharactersReceived> get copyWith =>
      __$CharactersReceivedCopyWithImpl<_CharactersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniverseDomain universe, FiltersState? filtersState)
        watchUniverseStarted,
    required TResult Function(
            Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
            FiltersState? filtersState)
        charactersReceived,
    required TResult Function(UniverseDomain universe) deleteAll,
  }) {
    return charactersReceived(failureOrCharacters, filtersState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniverseDomain universe, FiltersState? filtersState)?
        watchUniverseStarted,
    TResult Function(
            Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
            FiltersState? filtersState)?
        charactersReceived,
    TResult Function(UniverseDomain universe)? deleteAll,
  }) {
    return charactersReceived?.call(failureOrCharacters, filtersState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniverseDomain universe, FiltersState? filtersState)?
        watchUniverseStarted,
    TResult Function(
            Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
            FiltersState? filtersState)?
        charactersReceived,
    TResult Function(UniverseDomain universe)? deleteAll,
    required TResult orElse(),
  }) {
    if (charactersReceived != null) {
      return charactersReceived(failureOrCharacters, filtersState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchUniverseCharacters value)
        watchUniverseStarted,
    required TResult Function(_CharactersReceived value) charactersReceived,
    required TResult Function(_DeleteAllCharacters value) deleteAll,
  }) {
    return charactersReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchUniverseCharacters value)? watchUniverseStarted,
    TResult Function(_CharactersReceived value)? charactersReceived,
    TResult Function(_DeleteAllCharacters value)? deleteAll,
  }) {
    return charactersReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchUniverseCharacters value)? watchUniverseStarted,
    TResult Function(_CharactersReceived value)? charactersReceived,
    TResult Function(_DeleteAllCharacters value)? deleteAll,
    required TResult orElse(),
  }) {
    if (charactersReceived != null) {
      return charactersReceived(this);
    }
    return orElse();
  }
}

abstract class _CharactersReceived implements CharactersEvent {
  const factory _CharactersReceived(
      Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
      {FiltersState? filtersState}) = _$_CharactersReceived;

  Either<CharacterFailure, List<CharacterDomain>> get failureOrCharacters =>
      throw _privateConstructorUsedError;
  FiltersState? get filtersState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CharactersReceivedCopyWith<_CharactersReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteAllCharactersCopyWith<$Res> {
  factory _$DeleteAllCharactersCopyWith(_DeleteAllCharacters value,
          $Res Function(_DeleteAllCharacters) then) =
      __$DeleteAllCharactersCopyWithImpl<$Res>;
  $Res call({UniverseDomain universe});

  $UniverseDomainCopyWith<$Res> get universe;
}

/// @nodoc
class __$DeleteAllCharactersCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$DeleteAllCharactersCopyWith<$Res> {
  __$DeleteAllCharactersCopyWithImpl(
      _DeleteAllCharacters _value, $Res Function(_DeleteAllCharacters) _then)
      : super(_value, (v) => _then(v as _DeleteAllCharacters));

  @override
  _DeleteAllCharacters get _value => super._value as _DeleteAllCharacters;

  @override
  $Res call({
    Object? universe = freezed,
  }) {
    return _then(_DeleteAllCharacters(
      universe == freezed
          ? _value.universe
          : universe // ignore: cast_nullable_to_non_nullable
              as UniverseDomain,
    ));
  }

  @override
  $UniverseDomainCopyWith<$Res> get universe {
    return $UniverseDomainCopyWith<$Res>(_value.universe, (value) {
      return _then(_value.copyWith(universe: value));
    });
  }
}

/// @nodoc

class _$_DeleteAllCharacters implements _DeleteAllCharacters {
  const _$_DeleteAllCharacters(this.universe);

  @override
  final UniverseDomain universe;

  @override
  String toString() {
    return 'CharactersEvent.deleteAll(universe: $universe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteAllCharacters &&
            (identical(other.universe, universe) ||
                const DeepCollectionEquality()
                    .equals(other.universe, universe)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(universe);

  @JsonKey(ignore: true)
  @override
  _$DeleteAllCharactersCopyWith<_DeleteAllCharacters> get copyWith =>
      __$DeleteAllCharactersCopyWithImpl<_DeleteAllCharacters>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniverseDomain universe, FiltersState? filtersState)
        watchUniverseStarted,
    required TResult Function(
            Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
            FiltersState? filtersState)
        charactersReceived,
    required TResult Function(UniverseDomain universe) deleteAll,
  }) {
    return deleteAll(universe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniverseDomain universe, FiltersState? filtersState)?
        watchUniverseStarted,
    TResult Function(
            Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
            FiltersState? filtersState)?
        charactersReceived,
    TResult Function(UniverseDomain universe)? deleteAll,
  }) {
    return deleteAll?.call(universe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniverseDomain universe, FiltersState? filtersState)?
        watchUniverseStarted,
    TResult Function(
            Either<CharacterFailure, List<CharacterDomain>> failureOrCharacters,
            FiltersState? filtersState)?
        charactersReceived,
    TResult Function(UniverseDomain universe)? deleteAll,
    required TResult orElse(),
  }) {
    if (deleteAll != null) {
      return deleteAll(universe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchUniverseCharacters value)
        watchUniverseStarted,
    required TResult Function(_CharactersReceived value) charactersReceived,
    required TResult Function(_DeleteAllCharacters value) deleteAll,
  }) {
    return deleteAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchUniverseCharacters value)? watchUniverseStarted,
    TResult Function(_CharactersReceived value)? charactersReceived,
    TResult Function(_DeleteAllCharacters value)? deleteAll,
  }) {
    return deleteAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchUniverseCharacters value)? watchUniverseStarted,
    TResult Function(_CharactersReceived value)? charactersReceived,
    TResult Function(_DeleteAllCharacters value)? deleteAll,
    required TResult orElse(),
  }) {
    if (deleteAll != null) {
      return deleteAll(this);
    }
    return orElse();
  }
}

abstract class _DeleteAllCharacters implements CharactersEvent {
  const factory _DeleteAllCharacters(UniverseDomain universe) =
      _$_DeleteAllCharacters;

  UniverseDomain get universe => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteAllCharactersCopyWith<_DeleteAllCharacters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CharactersStateTearOff {
  const _$CharactersStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _CharactersLoadInProgress loadInProgress() {
    return const _CharactersLoadInProgress();
  }

  _CharactersLoadSuccess loadSuccess(
      List<CharacterDomain> characters, bool hasFilter) {
    return _CharactersLoadSuccess(
      characters,
      hasFilter,
    );
  }

  _CharactersLoadFailure loadFailure(CharacterFailure failure) {
    return _CharactersLoadFailure(
      failure,
    );
  }

  _CharactersDeleteFailure deleteFailure(CharacterFailure failure) {
    return _CharactersDeleteFailure(
      failure,
    );
  }
}

/// @nodoc
const $CharactersState = _$CharactersStateTearOff();

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CharacterDomain> characters, bool hasFilter)
        loadSuccess,
    required TResult Function(CharacterFailure failure) loadFailure,
    required TResult Function(CharacterFailure failure) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CharacterDomain> characters, bool hasFilter)?
        loadSuccess,
    TResult Function(CharacterFailure failure)? loadFailure,
    TResult Function(CharacterFailure failure)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CharacterDomain> characters, bool hasFilter)?
        loadSuccess,
    TResult Function(CharacterFailure failure)? loadFailure,
    TResult Function(CharacterFailure failure)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CharactersLoadInProgress value) loadInProgress,
    required TResult Function(_CharactersLoadSuccess value) loadSuccess,
    required TResult Function(_CharactersLoadFailure value) loadFailure,
    required TResult Function(_CharactersDeleteFailure value) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CharactersLoadInProgress value)? loadInProgress,
    TResult Function(_CharactersLoadSuccess value)? loadSuccess,
    TResult Function(_CharactersLoadFailure value)? loadFailure,
    TResult Function(_CharactersDeleteFailure value)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CharactersLoadInProgress value)? loadInProgress,
    TResult Function(_CharactersLoadSuccess value)? loadSuccess,
    TResult Function(_CharactersLoadFailure value)? loadFailure,
    TResult Function(_CharactersDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  final CharactersState _value;
  // ignore: unused_field
  final $Res Function(CharactersState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CharactersStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CharactersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CharacterDomain> characters, bool hasFilter)
        loadSuccess,
    required TResult Function(CharacterFailure failure) loadFailure,
    required TResult Function(CharacterFailure failure) deleteFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CharacterDomain> characters, bool hasFilter)?
        loadSuccess,
    TResult Function(CharacterFailure failure)? loadFailure,
    TResult Function(CharacterFailure failure)? deleteFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CharacterDomain> characters, bool hasFilter)?
        loadSuccess,
    TResult Function(CharacterFailure failure)? loadFailure,
    TResult Function(CharacterFailure failure)? deleteFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CharactersLoadInProgress value) loadInProgress,
    required TResult Function(_CharactersLoadSuccess value) loadSuccess,
    required TResult Function(_CharactersLoadFailure value) loadFailure,
    required TResult Function(_CharactersDeleteFailure value) deleteFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CharactersLoadInProgress value)? loadInProgress,
    TResult Function(_CharactersLoadSuccess value)? loadSuccess,
    TResult Function(_CharactersLoadFailure value)? loadFailure,
    TResult Function(_CharactersDeleteFailure value)? deleteFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CharactersLoadInProgress value)? loadInProgress,
    TResult Function(_CharactersLoadSuccess value)? loadSuccess,
    TResult Function(_CharactersLoadFailure value)? loadFailure,
    TResult Function(_CharactersDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CharactersState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$CharactersLoadInProgressCopyWith<$Res> {
  factory _$CharactersLoadInProgressCopyWith(_CharactersLoadInProgress value,
          $Res Function(_CharactersLoadInProgress) then) =
      __$CharactersLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$CharactersLoadInProgressCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$CharactersLoadInProgressCopyWith<$Res> {
  __$CharactersLoadInProgressCopyWithImpl(_CharactersLoadInProgress _value,
      $Res Function(_CharactersLoadInProgress) _then)
      : super(_value, (v) => _then(v as _CharactersLoadInProgress));

  @override
  _CharactersLoadInProgress get _value =>
      super._value as _CharactersLoadInProgress;
}

/// @nodoc

class _$_CharactersLoadInProgress implements _CharactersLoadInProgress {
  const _$_CharactersLoadInProgress();

  @override
  String toString() {
    return 'CharactersState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CharactersLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CharacterDomain> characters, bool hasFilter)
        loadSuccess,
    required TResult Function(CharacterFailure failure) loadFailure,
    required TResult Function(CharacterFailure failure) deleteFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CharacterDomain> characters, bool hasFilter)?
        loadSuccess,
    TResult Function(CharacterFailure failure)? loadFailure,
    TResult Function(CharacterFailure failure)? deleteFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CharacterDomain> characters, bool hasFilter)?
        loadSuccess,
    TResult Function(CharacterFailure failure)? loadFailure,
    TResult Function(CharacterFailure failure)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CharactersLoadInProgress value) loadInProgress,
    required TResult Function(_CharactersLoadSuccess value) loadSuccess,
    required TResult Function(_CharactersLoadFailure value) loadFailure,
    required TResult Function(_CharactersDeleteFailure value) deleteFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CharactersLoadInProgress value)? loadInProgress,
    TResult Function(_CharactersLoadSuccess value)? loadSuccess,
    TResult Function(_CharactersLoadFailure value)? loadFailure,
    TResult Function(_CharactersDeleteFailure value)? deleteFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CharactersLoadInProgress value)? loadInProgress,
    TResult Function(_CharactersLoadSuccess value)? loadSuccess,
    TResult Function(_CharactersLoadFailure value)? loadFailure,
    TResult Function(_CharactersDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _CharactersLoadInProgress implements CharactersState {
  const factory _CharactersLoadInProgress() = _$_CharactersLoadInProgress;
}

/// @nodoc
abstract class _$CharactersLoadSuccessCopyWith<$Res> {
  factory _$CharactersLoadSuccessCopyWith(_CharactersLoadSuccess value,
          $Res Function(_CharactersLoadSuccess) then) =
      __$CharactersLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<CharacterDomain> characters, bool hasFilter});
}

/// @nodoc
class __$CharactersLoadSuccessCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$CharactersLoadSuccessCopyWith<$Res> {
  __$CharactersLoadSuccessCopyWithImpl(_CharactersLoadSuccess _value,
      $Res Function(_CharactersLoadSuccess) _then)
      : super(_value, (v) => _then(v as _CharactersLoadSuccess));

  @override
  _CharactersLoadSuccess get _value => super._value as _CharactersLoadSuccess;

  @override
  $Res call({
    Object? characters = freezed,
    Object? hasFilter = freezed,
  }) {
    return _then(_CharactersLoadSuccess(
      characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterDomain>,
      hasFilter == freezed
          ? _value.hasFilter
          : hasFilter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CharactersLoadSuccess implements _CharactersLoadSuccess {
  const _$_CharactersLoadSuccess(this.characters, this.hasFilter);

  @override
  final List<CharacterDomain> characters;
  @override
  final bool hasFilter;

  @override
  String toString() {
    return 'CharactersState.loadSuccess(characters: $characters, hasFilter: $hasFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharactersLoadSuccess &&
            (identical(other.characters, characters) ||
                const DeepCollectionEquality()
                    .equals(other.characters, characters)) &&
            (identical(other.hasFilter, hasFilter) ||
                const DeepCollectionEquality()
                    .equals(other.hasFilter, hasFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(characters) ^
      const DeepCollectionEquality().hash(hasFilter);

  @JsonKey(ignore: true)
  @override
  _$CharactersLoadSuccessCopyWith<_CharactersLoadSuccess> get copyWith =>
      __$CharactersLoadSuccessCopyWithImpl<_CharactersLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CharacterDomain> characters, bool hasFilter)
        loadSuccess,
    required TResult Function(CharacterFailure failure) loadFailure,
    required TResult Function(CharacterFailure failure) deleteFailure,
  }) {
    return loadSuccess(characters, hasFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CharacterDomain> characters, bool hasFilter)?
        loadSuccess,
    TResult Function(CharacterFailure failure)? loadFailure,
    TResult Function(CharacterFailure failure)? deleteFailure,
  }) {
    return loadSuccess?.call(characters, hasFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CharacterDomain> characters, bool hasFilter)?
        loadSuccess,
    TResult Function(CharacterFailure failure)? loadFailure,
    TResult Function(CharacterFailure failure)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(characters, hasFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CharactersLoadInProgress value) loadInProgress,
    required TResult Function(_CharactersLoadSuccess value) loadSuccess,
    required TResult Function(_CharactersLoadFailure value) loadFailure,
    required TResult Function(_CharactersDeleteFailure value) deleteFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CharactersLoadInProgress value)? loadInProgress,
    TResult Function(_CharactersLoadSuccess value)? loadSuccess,
    TResult Function(_CharactersLoadFailure value)? loadFailure,
    TResult Function(_CharactersDeleteFailure value)? deleteFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CharactersLoadInProgress value)? loadInProgress,
    TResult Function(_CharactersLoadSuccess value)? loadSuccess,
    TResult Function(_CharactersLoadFailure value)? loadFailure,
    TResult Function(_CharactersDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _CharactersLoadSuccess implements CharactersState {
  const factory _CharactersLoadSuccess(
          List<CharacterDomain> characters, bool hasFilter) =
      _$_CharactersLoadSuccess;

  List<CharacterDomain> get characters => throw _privateConstructorUsedError;
  bool get hasFilter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CharactersLoadSuccessCopyWith<_CharactersLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CharactersLoadFailureCopyWith<$Res> {
  factory _$CharactersLoadFailureCopyWith(_CharactersLoadFailure value,
          $Res Function(_CharactersLoadFailure) then) =
      __$CharactersLoadFailureCopyWithImpl<$Res>;
  $Res call({CharacterFailure failure});

  $CharacterFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$CharactersLoadFailureCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$CharactersLoadFailureCopyWith<$Res> {
  __$CharactersLoadFailureCopyWithImpl(_CharactersLoadFailure _value,
      $Res Function(_CharactersLoadFailure) _then)
      : super(_value, (v) => _then(v as _CharactersLoadFailure));

  @override
  _CharactersLoadFailure get _value => super._value as _CharactersLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_CharactersLoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CharacterFailure,
    ));
  }

  @override
  $CharacterFailureCopyWith<$Res> get failure {
    return $CharacterFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_CharactersLoadFailure implements _CharactersLoadFailure {
  const _$_CharactersLoadFailure(this.failure);

  @override
  final CharacterFailure failure;

  @override
  String toString() {
    return 'CharactersState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharactersLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$CharactersLoadFailureCopyWith<_CharactersLoadFailure> get copyWith =>
      __$CharactersLoadFailureCopyWithImpl<_CharactersLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CharacterDomain> characters, bool hasFilter)
        loadSuccess,
    required TResult Function(CharacterFailure failure) loadFailure,
    required TResult Function(CharacterFailure failure) deleteFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CharacterDomain> characters, bool hasFilter)?
        loadSuccess,
    TResult Function(CharacterFailure failure)? loadFailure,
    TResult Function(CharacterFailure failure)? deleteFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CharacterDomain> characters, bool hasFilter)?
        loadSuccess,
    TResult Function(CharacterFailure failure)? loadFailure,
    TResult Function(CharacterFailure failure)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CharactersLoadInProgress value) loadInProgress,
    required TResult Function(_CharactersLoadSuccess value) loadSuccess,
    required TResult Function(_CharactersLoadFailure value) loadFailure,
    required TResult Function(_CharactersDeleteFailure value) deleteFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CharactersLoadInProgress value)? loadInProgress,
    TResult Function(_CharactersLoadSuccess value)? loadSuccess,
    TResult Function(_CharactersLoadFailure value)? loadFailure,
    TResult Function(_CharactersDeleteFailure value)? deleteFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CharactersLoadInProgress value)? loadInProgress,
    TResult Function(_CharactersLoadSuccess value)? loadSuccess,
    TResult Function(_CharactersLoadFailure value)? loadFailure,
    TResult Function(_CharactersDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _CharactersLoadFailure implements CharactersState {
  const factory _CharactersLoadFailure(CharacterFailure failure) =
      _$_CharactersLoadFailure;

  CharacterFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CharactersLoadFailureCopyWith<_CharactersLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CharactersDeleteFailureCopyWith<$Res> {
  factory _$CharactersDeleteFailureCopyWith(_CharactersDeleteFailure value,
          $Res Function(_CharactersDeleteFailure) then) =
      __$CharactersDeleteFailureCopyWithImpl<$Res>;
  $Res call({CharacterFailure failure});

  $CharacterFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$CharactersDeleteFailureCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$CharactersDeleteFailureCopyWith<$Res> {
  __$CharactersDeleteFailureCopyWithImpl(_CharactersDeleteFailure _value,
      $Res Function(_CharactersDeleteFailure) _then)
      : super(_value, (v) => _then(v as _CharactersDeleteFailure));

  @override
  _CharactersDeleteFailure get _value =>
      super._value as _CharactersDeleteFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_CharactersDeleteFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CharacterFailure,
    ));
  }

  @override
  $CharacterFailureCopyWith<$Res> get failure {
    return $CharacterFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_CharactersDeleteFailure implements _CharactersDeleteFailure {
  const _$_CharactersDeleteFailure(this.failure);

  @override
  final CharacterFailure failure;

  @override
  String toString() {
    return 'CharactersState.deleteFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharactersDeleteFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$CharactersDeleteFailureCopyWith<_CharactersDeleteFailure> get copyWith =>
      __$CharactersDeleteFailureCopyWithImpl<_CharactersDeleteFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CharacterDomain> characters, bool hasFilter)
        loadSuccess,
    required TResult Function(CharacterFailure failure) loadFailure,
    required TResult Function(CharacterFailure failure) deleteFailure,
  }) {
    return deleteFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CharacterDomain> characters, bool hasFilter)?
        loadSuccess,
    TResult Function(CharacterFailure failure)? loadFailure,
    TResult Function(CharacterFailure failure)? deleteFailure,
  }) {
    return deleteFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CharacterDomain> characters, bool hasFilter)?
        loadSuccess,
    TResult Function(CharacterFailure failure)? loadFailure,
    TResult Function(CharacterFailure failure)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CharactersLoadInProgress value) loadInProgress,
    required TResult Function(_CharactersLoadSuccess value) loadSuccess,
    required TResult Function(_CharactersLoadFailure value) loadFailure,
    required TResult Function(_CharactersDeleteFailure value) deleteFailure,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CharactersLoadInProgress value)? loadInProgress,
    TResult Function(_CharactersLoadSuccess value)? loadSuccess,
    TResult Function(_CharactersLoadFailure value)? loadFailure,
    TResult Function(_CharactersDeleteFailure value)? deleteFailure,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CharactersLoadInProgress value)? loadInProgress,
    TResult Function(_CharactersLoadSuccess value)? loadSuccess,
    TResult Function(_CharactersLoadFailure value)? loadFailure,
    TResult Function(_CharactersDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _CharactersDeleteFailure implements CharactersState {
  const factory _CharactersDeleteFailure(CharacterFailure failure) =
      _$_CharactersDeleteFailure;

  CharacterFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CharactersDeleteFailureCopyWith<_CharactersDeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
