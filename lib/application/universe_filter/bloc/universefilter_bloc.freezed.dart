// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'universefilter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UniversefilterEventTearOff {
  const _$UniversefilterEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SelectedUniverse selectedUniverse(UniverseDomain universe) {
    return _SelectedUniverse(
      universe,
    );
  }
}

/// @nodoc
const $UniversefilterEvent = _$UniversefilterEventTearOff();

/// @nodoc
mixin _$UniversefilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UniverseDomain universe) selectedUniverse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UniverseDomain universe)? selectedUniverse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UniverseDomain universe)? selectedUniverse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedUniverse value) selectedUniverse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedUniverse value)? selectedUniverse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedUniverse value)? selectedUniverse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversefilterEventCopyWith<$Res> {
  factory $UniversefilterEventCopyWith(
          UniversefilterEvent value, $Res Function(UniversefilterEvent) then) =
      _$UniversefilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UniversefilterEventCopyWithImpl<$Res>
    implements $UniversefilterEventCopyWith<$Res> {
  _$UniversefilterEventCopyWithImpl(this._value, this._then);

  final UniversefilterEvent _value;
  // ignore: unused_field
  final $Res Function(UniversefilterEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$UniversefilterEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'UniversefilterEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UniverseDomain universe) selectedUniverse,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UniverseDomain universe)? selectedUniverse,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UniverseDomain universe)? selectedUniverse,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedUniverse value) selectedUniverse,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedUniverse value)? selectedUniverse,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedUniverse value)? selectedUniverse,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UniversefilterEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SelectedUniverseCopyWith<$Res> {
  factory _$SelectedUniverseCopyWith(
          _SelectedUniverse value, $Res Function(_SelectedUniverse) then) =
      __$SelectedUniverseCopyWithImpl<$Res>;
  $Res call({UniverseDomain universe});

  $UniverseDomainCopyWith<$Res> get universe;
}

/// @nodoc
class __$SelectedUniverseCopyWithImpl<$Res>
    extends _$UniversefilterEventCopyWithImpl<$Res>
    implements _$SelectedUniverseCopyWith<$Res> {
  __$SelectedUniverseCopyWithImpl(
      _SelectedUniverse _value, $Res Function(_SelectedUniverse) _then)
      : super(_value, (v) => _then(v as _SelectedUniverse));

  @override
  _SelectedUniverse get _value => super._value as _SelectedUniverse;

  @override
  $Res call({
    Object? universe = freezed,
  }) {
    return _then(_SelectedUniverse(
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

class _$_SelectedUniverse implements _SelectedUniverse {
  const _$_SelectedUniverse(this.universe);

  @override
  final UniverseDomain universe;

  @override
  String toString() {
    return 'UniversefilterEvent.selectedUniverse(universe: $universe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedUniverse &&
            (identical(other.universe, universe) ||
                const DeepCollectionEquality()
                    .equals(other.universe, universe)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(universe);

  @JsonKey(ignore: true)
  @override
  _$SelectedUniverseCopyWith<_SelectedUniverse> get copyWith =>
      __$SelectedUniverseCopyWithImpl<_SelectedUniverse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UniverseDomain universe) selectedUniverse,
  }) {
    return selectedUniverse(universe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UniverseDomain universe)? selectedUniverse,
  }) {
    return selectedUniverse?.call(universe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UniverseDomain universe)? selectedUniverse,
    required TResult orElse(),
  }) {
    if (selectedUniverse != null) {
      return selectedUniverse(universe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedUniverse value) selectedUniverse,
  }) {
    return selectedUniverse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedUniverse value)? selectedUniverse,
  }) {
    return selectedUniverse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedUniverse value)? selectedUniverse,
    required TResult orElse(),
  }) {
    if (selectedUniverse != null) {
      return selectedUniverse(this);
    }
    return orElse();
  }
}

abstract class _SelectedUniverse implements UniversefilterEvent {
  const factory _SelectedUniverse(UniverseDomain universe) =
      _$_SelectedUniverse;

  UniverseDomain get universe => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedUniverseCopyWith<_SelectedUniverse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UniversefilterStateTearOff {
  const _$UniversefilterStateTearOff();

  _UniverseFilterState call({required UniverseDomain universe}) {
    return _UniverseFilterState(
      universe: universe,
    );
  }
}

/// @nodoc
const $UniversefilterState = _$UniversefilterStateTearOff();

/// @nodoc
mixin _$UniversefilterState {
  UniverseDomain get universe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniversefilterStateCopyWith<UniversefilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversefilterStateCopyWith<$Res> {
  factory $UniversefilterStateCopyWith(
          UniversefilterState value, $Res Function(UniversefilterState) then) =
      _$UniversefilterStateCopyWithImpl<$Res>;
  $Res call({UniverseDomain universe});

  $UniverseDomainCopyWith<$Res> get universe;
}

/// @nodoc
class _$UniversefilterStateCopyWithImpl<$Res>
    implements $UniversefilterStateCopyWith<$Res> {
  _$UniversefilterStateCopyWithImpl(this._value, this._then);

  final UniversefilterState _value;
  // ignore: unused_field
  final $Res Function(UniversefilterState) _then;

  @override
  $Res call({
    Object? universe = freezed,
  }) {
    return _then(_value.copyWith(
      universe: universe == freezed
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
abstract class _$UniverseFilterStateCopyWith<$Res>
    implements $UniversefilterStateCopyWith<$Res> {
  factory _$UniverseFilterStateCopyWith(_UniverseFilterState value,
          $Res Function(_UniverseFilterState) then) =
      __$UniverseFilterStateCopyWithImpl<$Res>;
  @override
  $Res call({UniverseDomain universe});

  @override
  $UniverseDomainCopyWith<$Res> get universe;
}

/// @nodoc
class __$UniverseFilterStateCopyWithImpl<$Res>
    extends _$UniversefilterStateCopyWithImpl<$Res>
    implements _$UniverseFilterStateCopyWith<$Res> {
  __$UniverseFilterStateCopyWithImpl(
      _UniverseFilterState _value, $Res Function(_UniverseFilterState) _then)
      : super(_value, (v) => _then(v as _UniverseFilterState));

  @override
  _UniverseFilterState get _value => super._value as _UniverseFilterState;

  @override
  $Res call({
    Object? universe = freezed,
  }) {
    return _then(_UniverseFilterState(
      universe: universe == freezed
          ? _value.universe
          : universe // ignore: cast_nullable_to_non_nullable
              as UniverseDomain,
    ));
  }
}

/// @nodoc

class _$_UniverseFilterState implements _UniverseFilterState {
  const _$_UniverseFilterState({required this.universe});

  @override
  final UniverseDomain universe;

  @override
  String toString() {
    return 'UniversefilterState(universe: $universe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UniverseFilterState &&
            (identical(other.universe, universe) ||
                const DeepCollectionEquality()
                    .equals(other.universe, universe)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(universe);

  @JsonKey(ignore: true)
  @override
  _$UniverseFilterStateCopyWith<_UniverseFilterState> get copyWith =>
      __$UniverseFilterStateCopyWithImpl<_UniverseFilterState>(
          this, _$identity);
}

abstract class _UniverseFilterState implements UniversefilterState {
  const factory _UniverseFilterState({required UniverseDomain universe}) =
      _$_UniverseFilterState;

  @override
  UniverseDomain get universe => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UniverseFilterStateCopyWith<_UniverseFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
