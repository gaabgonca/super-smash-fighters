// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'universes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UniversesEventTearOff {
  const _$UniversesEventTearOff();

  _WatchAllUniverses watchAllStarted() {
    return const _WatchAllUniverses();
  }

  _UniversesReceived universesReceived(
      Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses) {
    return _UniversesReceived(
      failureOrUniverses,
    );
  }

  _DeleteAllUniverses deleteAll() {
    return const _DeleteAllUniverses();
  }
}

/// @nodoc
const $UniversesEvent = _$UniversesEventTearOff();

/// @nodoc
mixin _$UniversesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses)
        universesReceived,
    required TResult Function() deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses)?
        universesReceived,
    TResult Function()? deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses)?
        universesReceived,
    TResult Function()? deleteAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllUniverses value) watchAllStarted,
    required TResult Function(_UniversesReceived value) universesReceived,
    required TResult Function(_DeleteAllUniverses value) deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllUniverses value)? watchAllStarted,
    TResult Function(_UniversesReceived value)? universesReceived,
    TResult Function(_DeleteAllUniverses value)? deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllUniverses value)? watchAllStarted,
    TResult Function(_UniversesReceived value)? universesReceived,
    TResult Function(_DeleteAllUniverses value)? deleteAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversesEventCopyWith<$Res> {
  factory $UniversesEventCopyWith(
          UniversesEvent value, $Res Function(UniversesEvent) then) =
      _$UniversesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UniversesEventCopyWithImpl<$Res>
    implements $UniversesEventCopyWith<$Res> {
  _$UniversesEventCopyWithImpl(this._value, this._then);

  final UniversesEvent _value;
  // ignore: unused_field
  final $Res Function(UniversesEvent) _then;
}

/// @nodoc
abstract class _$WatchAllUniversesCopyWith<$Res> {
  factory _$WatchAllUniversesCopyWith(
          _WatchAllUniverses value, $Res Function(_WatchAllUniverses) then) =
      __$WatchAllUniversesCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllUniversesCopyWithImpl<$Res>
    extends _$UniversesEventCopyWithImpl<$Res>
    implements _$WatchAllUniversesCopyWith<$Res> {
  __$WatchAllUniversesCopyWithImpl(
      _WatchAllUniverses _value, $Res Function(_WatchAllUniverses) _then)
      : super(_value, (v) => _then(v as _WatchAllUniverses));

  @override
  _WatchAllUniverses get _value => super._value as _WatchAllUniverses;
}

/// @nodoc

class _$_WatchAllUniverses implements _WatchAllUniverses {
  const _$_WatchAllUniverses();

  @override
  String toString() {
    return 'UniversesEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllUniverses);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses)
        universesReceived,
    required TResult Function() deleteAll,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses)?
        universesReceived,
    TResult Function()? deleteAll,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses)?
        universesReceived,
    TResult Function()? deleteAll,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllUniverses value) watchAllStarted,
    required TResult Function(_UniversesReceived value) universesReceived,
    required TResult Function(_DeleteAllUniverses value) deleteAll,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllUniverses value)? watchAllStarted,
    TResult Function(_UniversesReceived value)? universesReceived,
    TResult Function(_DeleteAllUniverses value)? deleteAll,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllUniverses value)? watchAllStarted,
    TResult Function(_UniversesReceived value)? universesReceived,
    TResult Function(_DeleteAllUniverses value)? deleteAll,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllUniverses implements UniversesEvent {
  const factory _WatchAllUniverses() = _$_WatchAllUniverses;
}

/// @nodoc
abstract class _$UniversesReceivedCopyWith<$Res> {
  factory _$UniversesReceivedCopyWith(
          _UniversesReceived value, $Res Function(_UniversesReceived) then) =
      __$UniversesReceivedCopyWithImpl<$Res>;
  $Res call({Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses});
}

/// @nodoc
class __$UniversesReceivedCopyWithImpl<$Res>
    extends _$UniversesEventCopyWithImpl<$Res>
    implements _$UniversesReceivedCopyWith<$Res> {
  __$UniversesReceivedCopyWithImpl(
      _UniversesReceived _value, $Res Function(_UniversesReceived) _then)
      : super(_value, (v) => _then(v as _UniversesReceived));

  @override
  _UniversesReceived get _value => super._value as _UniversesReceived;

  @override
  $Res call({
    Object? failureOrUniverses = freezed,
  }) {
    return _then(_UniversesReceived(
      failureOrUniverses == freezed
          ? _value.failureOrUniverses
          : failureOrUniverses // ignore: cast_nullable_to_non_nullable
              as Either<UniverseFailure, List<UniverseDomain>>,
    ));
  }
}

/// @nodoc

class _$_UniversesReceived implements _UniversesReceived {
  const _$_UniversesReceived(this.failureOrUniverses);

  @override
  final Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses;

  @override
  String toString() {
    return 'UniversesEvent.universesReceived(failureOrUniverses: $failureOrUniverses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UniversesReceived &&
            (identical(other.failureOrUniverses, failureOrUniverses) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrUniverses, failureOrUniverses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrUniverses);

  @JsonKey(ignore: true)
  @override
  _$UniversesReceivedCopyWith<_UniversesReceived> get copyWith =>
      __$UniversesReceivedCopyWithImpl<_UniversesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses)
        universesReceived,
    required TResult Function() deleteAll,
  }) {
    return universesReceived(failureOrUniverses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses)?
        universesReceived,
    TResult Function()? deleteAll,
  }) {
    return universesReceived?.call(failureOrUniverses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses)?
        universesReceived,
    TResult Function()? deleteAll,
    required TResult orElse(),
  }) {
    if (universesReceived != null) {
      return universesReceived(failureOrUniverses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllUniverses value) watchAllStarted,
    required TResult Function(_UniversesReceived value) universesReceived,
    required TResult Function(_DeleteAllUniverses value) deleteAll,
  }) {
    return universesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllUniverses value)? watchAllStarted,
    TResult Function(_UniversesReceived value)? universesReceived,
    TResult Function(_DeleteAllUniverses value)? deleteAll,
  }) {
    return universesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllUniverses value)? watchAllStarted,
    TResult Function(_UniversesReceived value)? universesReceived,
    TResult Function(_DeleteAllUniverses value)? deleteAll,
    required TResult orElse(),
  }) {
    if (universesReceived != null) {
      return universesReceived(this);
    }
    return orElse();
  }
}

abstract class _UniversesReceived implements UniversesEvent {
  const factory _UniversesReceived(
          Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses) =
      _$_UniversesReceived;

  Either<UniverseFailure, List<UniverseDomain>> get failureOrUniverses =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UniversesReceivedCopyWith<_UniversesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteAllUniversesCopyWith<$Res> {
  factory _$DeleteAllUniversesCopyWith(
          _DeleteAllUniverses value, $Res Function(_DeleteAllUniverses) then) =
      __$DeleteAllUniversesCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteAllUniversesCopyWithImpl<$Res>
    extends _$UniversesEventCopyWithImpl<$Res>
    implements _$DeleteAllUniversesCopyWith<$Res> {
  __$DeleteAllUniversesCopyWithImpl(
      _DeleteAllUniverses _value, $Res Function(_DeleteAllUniverses) _then)
      : super(_value, (v) => _then(v as _DeleteAllUniverses));

  @override
  _DeleteAllUniverses get _value => super._value as _DeleteAllUniverses;
}

/// @nodoc

class _$_DeleteAllUniverses implements _DeleteAllUniverses {
  const _$_DeleteAllUniverses();

  @override
  String toString() {
    return 'UniversesEvent.deleteAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteAllUniverses);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses)
        universesReceived,
    required TResult Function() deleteAll,
  }) {
    return deleteAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses)?
        universesReceived,
    TResult Function()? deleteAll,
  }) {
    return deleteAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<UniverseFailure, List<UniverseDomain>> failureOrUniverses)?
        universesReceived,
    TResult Function()? deleteAll,
    required TResult orElse(),
  }) {
    if (deleteAll != null) {
      return deleteAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllUniverses value) watchAllStarted,
    required TResult Function(_UniversesReceived value) universesReceived,
    required TResult Function(_DeleteAllUniverses value) deleteAll,
  }) {
    return deleteAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllUniverses value)? watchAllStarted,
    TResult Function(_UniversesReceived value)? universesReceived,
    TResult Function(_DeleteAllUniverses value)? deleteAll,
  }) {
    return deleteAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllUniverses value)? watchAllStarted,
    TResult Function(_UniversesReceived value)? universesReceived,
    TResult Function(_DeleteAllUniverses value)? deleteAll,
    required TResult orElse(),
  }) {
    if (deleteAll != null) {
      return deleteAll(this);
    }
    return orElse();
  }
}

abstract class _DeleteAllUniverses implements UniversesEvent {
  const factory _DeleteAllUniverses() = _$_DeleteAllUniverses;
}

/// @nodoc
class _$UniversesStateTearOff {
  const _$UniversesStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _UniversesLoadInProgress loadInProgress() {
    return const _UniversesLoadInProgress();
  }

  _UniversesLoadSuccess loadSuccess(List<UniverseDomain> universes) {
    return _UniversesLoadSuccess(
      universes,
    );
  }

  _UniversesLoadFailure loadFailure(UniverseFailure failure) {
    return _UniversesLoadFailure(
      failure,
    );
  }

  _UniversesDeleteFailure deleteFailure(UniverseFailure failure) {
    return _UniversesDeleteFailure(
      failure,
    );
  }
}

/// @nodoc
const $UniversesState = _$UniversesStateTearOff();

/// @nodoc
mixin _$UniversesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<UniverseDomain> universes) loadSuccess,
    required TResult Function(UniverseFailure failure) loadFailure,
    required TResult Function(UniverseFailure failure) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UniverseDomain> universes)? loadSuccess,
    TResult Function(UniverseFailure failure)? loadFailure,
    TResult Function(UniverseFailure failure)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UniverseDomain> universes)? loadSuccess,
    TResult Function(UniverseFailure failure)? loadFailure,
    TResult Function(UniverseFailure failure)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UniversesLoadInProgress value) loadInProgress,
    required TResult Function(_UniversesLoadSuccess value) loadSuccess,
    required TResult Function(_UniversesLoadFailure value) loadFailure,
    required TResult Function(_UniversesDeleteFailure value) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UniversesLoadInProgress value)? loadInProgress,
    TResult Function(_UniversesLoadSuccess value)? loadSuccess,
    TResult Function(_UniversesLoadFailure value)? loadFailure,
    TResult Function(_UniversesDeleteFailure value)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UniversesLoadInProgress value)? loadInProgress,
    TResult Function(_UniversesLoadSuccess value)? loadSuccess,
    TResult Function(_UniversesLoadFailure value)? loadFailure,
    TResult Function(_UniversesDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversesStateCopyWith<$Res> {
  factory $UniversesStateCopyWith(
          UniversesState value, $Res Function(UniversesState) then) =
      _$UniversesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UniversesStateCopyWithImpl<$Res>
    implements $UniversesStateCopyWith<$Res> {
  _$UniversesStateCopyWithImpl(this._value, this._then);

  final UniversesState _value;
  // ignore: unused_field
  final $Res Function(UniversesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UniversesStateCopyWithImpl<$Res>
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
    return 'UniversesState.initial()';
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
    required TResult Function(List<UniverseDomain> universes) loadSuccess,
    required TResult Function(UniverseFailure failure) loadFailure,
    required TResult Function(UniverseFailure failure) deleteFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UniverseDomain> universes)? loadSuccess,
    TResult Function(UniverseFailure failure)? loadFailure,
    TResult Function(UniverseFailure failure)? deleteFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UniverseDomain> universes)? loadSuccess,
    TResult Function(UniverseFailure failure)? loadFailure,
    TResult Function(UniverseFailure failure)? deleteFailure,
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
    required TResult Function(_UniversesLoadInProgress value) loadInProgress,
    required TResult Function(_UniversesLoadSuccess value) loadSuccess,
    required TResult Function(_UniversesLoadFailure value) loadFailure,
    required TResult Function(_UniversesDeleteFailure value) deleteFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UniversesLoadInProgress value)? loadInProgress,
    TResult Function(_UniversesLoadSuccess value)? loadSuccess,
    TResult Function(_UniversesLoadFailure value)? loadFailure,
    TResult Function(_UniversesDeleteFailure value)? deleteFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UniversesLoadInProgress value)? loadInProgress,
    TResult Function(_UniversesLoadSuccess value)? loadSuccess,
    TResult Function(_UniversesLoadFailure value)? loadFailure,
    TResult Function(_UniversesDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UniversesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UniversesLoadInProgressCopyWith<$Res> {
  factory _$UniversesLoadInProgressCopyWith(_UniversesLoadInProgress value,
          $Res Function(_UniversesLoadInProgress) then) =
      __$UniversesLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$UniversesLoadInProgressCopyWithImpl<$Res>
    extends _$UniversesStateCopyWithImpl<$Res>
    implements _$UniversesLoadInProgressCopyWith<$Res> {
  __$UniversesLoadInProgressCopyWithImpl(_UniversesLoadInProgress _value,
      $Res Function(_UniversesLoadInProgress) _then)
      : super(_value, (v) => _then(v as _UniversesLoadInProgress));

  @override
  _UniversesLoadInProgress get _value =>
      super._value as _UniversesLoadInProgress;
}

/// @nodoc

class _$_UniversesLoadInProgress implements _UniversesLoadInProgress {
  const _$_UniversesLoadInProgress();

  @override
  String toString() {
    return 'UniversesState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UniversesLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<UniverseDomain> universes) loadSuccess,
    required TResult Function(UniverseFailure failure) loadFailure,
    required TResult Function(UniverseFailure failure) deleteFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UniverseDomain> universes)? loadSuccess,
    TResult Function(UniverseFailure failure)? loadFailure,
    TResult Function(UniverseFailure failure)? deleteFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UniverseDomain> universes)? loadSuccess,
    TResult Function(UniverseFailure failure)? loadFailure,
    TResult Function(UniverseFailure failure)? deleteFailure,
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
    required TResult Function(_UniversesLoadInProgress value) loadInProgress,
    required TResult Function(_UniversesLoadSuccess value) loadSuccess,
    required TResult Function(_UniversesLoadFailure value) loadFailure,
    required TResult Function(_UniversesDeleteFailure value) deleteFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UniversesLoadInProgress value)? loadInProgress,
    TResult Function(_UniversesLoadSuccess value)? loadSuccess,
    TResult Function(_UniversesLoadFailure value)? loadFailure,
    TResult Function(_UniversesDeleteFailure value)? deleteFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UniversesLoadInProgress value)? loadInProgress,
    TResult Function(_UniversesLoadSuccess value)? loadSuccess,
    TResult Function(_UniversesLoadFailure value)? loadFailure,
    TResult Function(_UniversesDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _UniversesLoadInProgress implements UniversesState {
  const factory _UniversesLoadInProgress() = _$_UniversesLoadInProgress;
}

/// @nodoc
abstract class _$UniversesLoadSuccessCopyWith<$Res> {
  factory _$UniversesLoadSuccessCopyWith(_UniversesLoadSuccess value,
          $Res Function(_UniversesLoadSuccess) then) =
      __$UniversesLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<UniverseDomain> universes});
}

/// @nodoc
class __$UniversesLoadSuccessCopyWithImpl<$Res>
    extends _$UniversesStateCopyWithImpl<$Res>
    implements _$UniversesLoadSuccessCopyWith<$Res> {
  __$UniversesLoadSuccessCopyWithImpl(
      _UniversesLoadSuccess _value, $Res Function(_UniversesLoadSuccess) _then)
      : super(_value, (v) => _then(v as _UniversesLoadSuccess));

  @override
  _UniversesLoadSuccess get _value => super._value as _UniversesLoadSuccess;

  @override
  $Res call({
    Object? universes = freezed,
  }) {
    return _then(_UniversesLoadSuccess(
      universes == freezed
          ? _value.universes
          : universes // ignore: cast_nullable_to_non_nullable
              as List<UniverseDomain>,
    ));
  }
}

/// @nodoc

class _$_UniversesLoadSuccess implements _UniversesLoadSuccess {
  const _$_UniversesLoadSuccess(this.universes);

  @override
  final List<UniverseDomain> universes;

  @override
  String toString() {
    return 'UniversesState.loadSuccess(universes: $universes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UniversesLoadSuccess &&
            (identical(other.universes, universes) ||
                const DeepCollectionEquality()
                    .equals(other.universes, universes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(universes);

  @JsonKey(ignore: true)
  @override
  _$UniversesLoadSuccessCopyWith<_UniversesLoadSuccess> get copyWith =>
      __$UniversesLoadSuccessCopyWithImpl<_UniversesLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<UniverseDomain> universes) loadSuccess,
    required TResult Function(UniverseFailure failure) loadFailure,
    required TResult Function(UniverseFailure failure) deleteFailure,
  }) {
    return loadSuccess(universes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UniverseDomain> universes)? loadSuccess,
    TResult Function(UniverseFailure failure)? loadFailure,
    TResult Function(UniverseFailure failure)? deleteFailure,
  }) {
    return loadSuccess?.call(universes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UniverseDomain> universes)? loadSuccess,
    TResult Function(UniverseFailure failure)? loadFailure,
    TResult Function(UniverseFailure failure)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(universes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UniversesLoadInProgress value) loadInProgress,
    required TResult Function(_UniversesLoadSuccess value) loadSuccess,
    required TResult Function(_UniversesLoadFailure value) loadFailure,
    required TResult Function(_UniversesDeleteFailure value) deleteFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UniversesLoadInProgress value)? loadInProgress,
    TResult Function(_UniversesLoadSuccess value)? loadSuccess,
    TResult Function(_UniversesLoadFailure value)? loadFailure,
    TResult Function(_UniversesDeleteFailure value)? deleteFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UniversesLoadInProgress value)? loadInProgress,
    TResult Function(_UniversesLoadSuccess value)? loadSuccess,
    TResult Function(_UniversesLoadFailure value)? loadFailure,
    TResult Function(_UniversesDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _UniversesLoadSuccess implements UniversesState {
  const factory _UniversesLoadSuccess(List<UniverseDomain> universes) =
      _$_UniversesLoadSuccess;

  List<UniverseDomain> get universes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UniversesLoadSuccessCopyWith<_UniversesLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UniversesLoadFailureCopyWith<$Res> {
  factory _$UniversesLoadFailureCopyWith(_UniversesLoadFailure value,
          $Res Function(_UniversesLoadFailure) then) =
      __$UniversesLoadFailureCopyWithImpl<$Res>;
  $Res call({UniverseFailure failure});

  $UniverseFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$UniversesLoadFailureCopyWithImpl<$Res>
    extends _$UniversesStateCopyWithImpl<$Res>
    implements _$UniversesLoadFailureCopyWith<$Res> {
  __$UniversesLoadFailureCopyWithImpl(
      _UniversesLoadFailure _value, $Res Function(_UniversesLoadFailure) _then)
      : super(_value, (v) => _then(v as _UniversesLoadFailure));

  @override
  _UniversesLoadFailure get _value => super._value as _UniversesLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_UniversesLoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as UniverseFailure,
    ));
  }

  @override
  $UniverseFailureCopyWith<$Res> get failure {
    return $UniverseFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_UniversesLoadFailure implements _UniversesLoadFailure {
  const _$_UniversesLoadFailure(this.failure);

  @override
  final UniverseFailure failure;

  @override
  String toString() {
    return 'UniversesState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UniversesLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$UniversesLoadFailureCopyWith<_UniversesLoadFailure> get copyWith =>
      __$UniversesLoadFailureCopyWithImpl<_UniversesLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<UniverseDomain> universes) loadSuccess,
    required TResult Function(UniverseFailure failure) loadFailure,
    required TResult Function(UniverseFailure failure) deleteFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UniverseDomain> universes)? loadSuccess,
    TResult Function(UniverseFailure failure)? loadFailure,
    TResult Function(UniverseFailure failure)? deleteFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UniverseDomain> universes)? loadSuccess,
    TResult Function(UniverseFailure failure)? loadFailure,
    TResult Function(UniverseFailure failure)? deleteFailure,
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
    required TResult Function(_UniversesLoadInProgress value) loadInProgress,
    required TResult Function(_UniversesLoadSuccess value) loadSuccess,
    required TResult Function(_UniversesLoadFailure value) loadFailure,
    required TResult Function(_UniversesDeleteFailure value) deleteFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UniversesLoadInProgress value)? loadInProgress,
    TResult Function(_UniversesLoadSuccess value)? loadSuccess,
    TResult Function(_UniversesLoadFailure value)? loadFailure,
    TResult Function(_UniversesDeleteFailure value)? deleteFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UniversesLoadInProgress value)? loadInProgress,
    TResult Function(_UniversesLoadSuccess value)? loadSuccess,
    TResult Function(_UniversesLoadFailure value)? loadFailure,
    TResult Function(_UniversesDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _UniversesLoadFailure implements UniversesState {
  const factory _UniversesLoadFailure(UniverseFailure failure) =
      _$_UniversesLoadFailure;

  UniverseFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UniversesLoadFailureCopyWith<_UniversesLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UniversesDeleteFailureCopyWith<$Res> {
  factory _$UniversesDeleteFailureCopyWith(_UniversesDeleteFailure value,
          $Res Function(_UniversesDeleteFailure) then) =
      __$UniversesDeleteFailureCopyWithImpl<$Res>;
  $Res call({UniverseFailure failure});

  $UniverseFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$UniversesDeleteFailureCopyWithImpl<$Res>
    extends _$UniversesStateCopyWithImpl<$Res>
    implements _$UniversesDeleteFailureCopyWith<$Res> {
  __$UniversesDeleteFailureCopyWithImpl(_UniversesDeleteFailure _value,
      $Res Function(_UniversesDeleteFailure) _then)
      : super(_value, (v) => _then(v as _UniversesDeleteFailure));

  @override
  _UniversesDeleteFailure get _value => super._value as _UniversesDeleteFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_UniversesDeleteFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as UniverseFailure,
    ));
  }

  @override
  $UniverseFailureCopyWith<$Res> get failure {
    return $UniverseFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_UniversesDeleteFailure implements _UniversesDeleteFailure {
  const _$_UniversesDeleteFailure(this.failure);

  @override
  final UniverseFailure failure;

  @override
  String toString() {
    return 'UniversesState.deleteFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UniversesDeleteFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$UniversesDeleteFailureCopyWith<_UniversesDeleteFailure> get copyWith =>
      __$UniversesDeleteFailureCopyWithImpl<_UniversesDeleteFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<UniverseDomain> universes) loadSuccess,
    required TResult Function(UniverseFailure failure) loadFailure,
    required TResult Function(UniverseFailure failure) deleteFailure,
  }) {
    return deleteFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UniverseDomain> universes)? loadSuccess,
    TResult Function(UniverseFailure failure)? loadFailure,
    TResult Function(UniverseFailure failure)? deleteFailure,
  }) {
    return deleteFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UniverseDomain> universes)? loadSuccess,
    TResult Function(UniverseFailure failure)? loadFailure,
    TResult Function(UniverseFailure failure)? deleteFailure,
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
    required TResult Function(_UniversesLoadInProgress value) loadInProgress,
    required TResult Function(_UniversesLoadSuccess value) loadSuccess,
    required TResult Function(_UniversesLoadFailure value) loadFailure,
    required TResult Function(_UniversesDeleteFailure value) deleteFailure,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UniversesLoadInProgress value)? loadInProgress,
    TResult Function(_UniversesLoadSuccess value)? loadSuccess,
    TResult Function(_UniversesLoadFailure value)? loadFailure,
    TResult Function(_UniversesDeleteFailure value)? deleteFailure,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UniversesLoadInProgress value)? loadInProgress,
    TResult Function(_UniversesLoadSuccess value)? loadSuccess,
    TResult Function(_UniversesLoadFailure value)? loadFailure,
    TResult Function(_UniversesDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _UniversesDeleteFailure implements UniversesState {
  const factory _UniversesDeleteFailure(UniverseFailure failure) =
      _$_UniversesDeleteFailure;

  UniverseFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UniversesDeleteFailureCopyWith<_UniversesDeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
