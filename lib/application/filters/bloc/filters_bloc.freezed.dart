// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FiltersEventTearOff {
  const _$FiltersEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SortChanged sortChanged(String sort) {
    return _SortChanged(
      sort,
    );
  }

  _PricesChanged pricesChanged(double minPrice, double maxPrice) {
    return _PricesChanged(
      minPrice,
      maxPrice,
    );
  }

  _RateChanged rateChanged(int rate) {
    return _RateChanged(
      rate,
    );
  }

  _Close close() {
    return const _Close();
  }

  _FiltersReset reset() {
    return const _FiltersReset();
  }
}

/// @nodoc
const $FiltersEvent = _$FiltersEventTearOff();

/// @nodoc
mixin _$FiltersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String sort) sortChanged,
    required TResult Function(double minPrice, double maxPrice) pricesChanged,
    required TResult Function(int rate) rateChanged,
    required TResult Function() close,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_PricesChanged value) pricesChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_Close value) close,
    required TResult Function(_FiltersReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersEventCopyWith<$Res> {
  factory $FiltersEventCopyWith(
          FiltersEvent value, $Res Function(FiltersEvent) then) =
      _$FiltersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FiltersEventCopyWithImpl<$Res> implements $FiltersEventCopyWith<$Res> {
  _$FiltersEventCopyWithImpl(this._value, this._then);

  final FiltersEvent _value;
  // ignore: unused_field
  final $Res Function(FiltersEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$FiltersEventCopyWithImpl<$Res>
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
    return 'FiltersEvent.started()';
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
    required TResult Function(String sort) sortChanged,
    required TResult Function(double minPrice, double maxPrice) pricesChanged,
    required TResult Function(int rate) rateChanged,
    required TResult Function() close,
    required TResult Function() reset,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
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
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_PricesChanged value) pricesChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_Close value) close,
    required TResult Function(_FiltersReset value) reset,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FiltersEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SortChangedCopyWith<$Res> {
  factory _$SortChangedCopyWith(
          _SortChanged value, $Res Function(_SortChanged) then) =
      __$SortChangedCopyWithImpl<$Res>;
  $Res call({String sort});
}

/// @nodoc
class __$SortChangedCopyWithImpl<$Res> extends _$FiltersEventCopyWithImpl<$Res>
    implements _$SortChangedCopyWith<$Res> {
  __$SortChangedCopyWithImpl(
      _SortChanged _value, $Res Function(_SortChanged) _then)
      : super(_value, (v) => _then(v as _SortChanged));

  @override
  _SortChanged get _value => super._value as _SortChanged;

  @override
  $Res call({
    Object? sort = freezed,
  }) {
    return _then(_SortChanged(
      sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SortChanged implements _SortChanged {
  const _$_SortChanged(this.sort);

  @override
  final String sort;

  @override
  String toString() {
    return 'FiltersEvent.sortChanged(sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SortChanged &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sort);

  @JsonKey(ignore: true)
  @override
  _$SortChangedCopyWith<_SortChanged> get copyWith =>
      __$SortChangedCopyWithImpl<_SortChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String sort) sortChanged,
    required TResult Function(double minPrice, double maxPrice) pricesChanged,
    required TResult Function(int rate) rateChanged,
    required TResult Function() close,
    required TResult Function() reset,
  }) {
    return sortChanged(sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
  }) {
    return sortChanged?.call(sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (sortChanged != null) {
      return sortChanged(sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_PricesChanged value) pricesChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_Close value) close,
    required TResult Function(_FiltersReset value) reset,
  }) {
    return sortChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
  }) {
    return sortChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
    required TResult orElse(),
  }) {
    if (sortChanged != null) {
      return sortChanged(this);
    }
    return orElse();
  }
}

abstract class _SortChanged implements FiltersEvent {
  const factory _SortChanged(String sort) = _$_SortChanged;

  String get sort => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SortChangedCopyWith<_SortChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PricesChangedCopyWith<$Res> {
  factory _$PricesChangedCopyWith(
          _PricesChanged value, $Res Function(_PricesChanged) then) =
      __$PricesChangedCopyWithImpl<$Res>;
  $Res call({double minPrice, double maxPrice});
}

/// @nodoc
class __$PricesChangedCopyWithImpl<$Res>
    extends _$FiltersEventCopyWithImpl<$Res>
    implements _$PricesChangedCopyWith<$Res> {
  __$PricesChangedCopyWithImpl(
      _PricesChanged _value, $Res Function(_PricesChanged) _then)
      : super(_value, (v) => _then(v as _PricesChanged));

  @override
  _PricesChanged get _value => super._value as _PricesChanged;

  @override
  $Res call({
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_PricesChanged(
      minPrice == freezed
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double,
      maxPrice == freezed
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PricesChanged implements _PricesChanged {
  const _$_PricesChanged(this.minPrice, this.maxPrice);

  @override
  final double minPrice;
  @override
  final double maxPrice;

  @override
  String toString() {
    return 'FiltersEvent.pricesChanged(minPrice: $minPrice, maxPrice: $maxPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PricesChanged &&
            (identical(other.minPrice, minPrice) ||
                const DeepCollectionEquality()
                    .equals(other.minPrice, minPrice)) &&
            (identical(other.maxPrice, maxPrice) ||
                const DeepCollectionEquality()
                    .equals(other.maxPrice, maxPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(minPrice) ^
      const DeepCollectionEquality().hash(maxPrice);

  @JsonKey(ignore: true)
  @override
  _$PricesChangedCopyWith<_PricesChanged> get copyWith =>
      __$PricesChangedCopyWithImpl<_PricesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String sort) sortChanged,
    required TResult Function(double minPrice, double maxPrice) pricesChanged,
    required TResult Function(int rate) rateChanged,
    required TResult Function() close,
    required TResult Function() reset,
  }) {
    return pricesChanged(minPrice, maxPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
  }) {
    return pricesChanged?.call(minPrice, maxPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (pricesChanged != null) {
      return pricesChanged(minPrice, maxPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_PricesChanged value) pricesChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_Close value) close,
    required TResult Function(_FiltersReset value) reset,
  }) {
    return pricesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
  }) {
    return pricesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
    required TResult orElse(),
  }) {
    if (pricesChanged != null) {
      return pricesChanged(this);
    }
    return orElse();
  }
}

abstract class _PricesChanged implements FiltersEvent {
  const factory _PricesChanged(double minPrice, double maxPrice) =
      _$_PricesChanged;

  double get minPrice => throw _privateConstructorUsedError;
  double get maxPrice => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PricesChangedCopyWith<_PricesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RateChangedCopyWith<$Res> {
  factory _$RateChangedCopyWith(
          _RateChanged value, $Res Function(_RateChanged) then) =
      __$RateChangedCopyWithImpl<$Res>;
  $Res call({int rate});
}

/// @nodoc
class __$RateChangedCopyWithImpl<$Res> extends _$FiltersEventCopyWithImpl<$Res>
    implements _$RateChangedCopyWith<$Res> {
  __$RateChangedCopyWithImpl(
      _RateChanged _value, $Res Function(_RateChanged) _then)
      : super(_value, (v) => _then(v as _RateChanged));

  @override
  _RateChanged get _value => super._value as _RateChanged;

  @override
  $Res call({
    Object? rate = freezed,
  }) {
    return _then(_RateChanged(
      rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RateChanged implements _RateChanged {
  const _$_RateChanged(this.rate);

  @override
  final int rate;

  @override
  String toString() {
    return 'FiltersEvent.rateChanged(rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RateChanged &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rate);

  @JsonKey(ignore: true)
  @override
  _$RateChangedCopyWith<_RateChanged> get copyWith =>
      __$RateChangedCopyWithImpl<_RateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String sort) sortChanged,
    required TResult Function(double minPrice, double maxPrice) pricesChanged,
    required TResult Function(int rate) rateChanged,
    required TResult Function() close,
    required TResult Function() reset,
  }) {
    return rateChanged(rate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
  }) {
    return rateChanged?.call(rate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (rateChanged != null) {
      return rateChanged(rate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_PricesChanged value) pricesChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_Close value) close,
    required TResult Function(_FiltersReset value) reset,
  }) {
    return rateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
  }) {
    return rateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
    required TResult orElse(),
  }) {
    if (rateChanged != null) {
      return rateChanged(this);
    }
    return orElse();
  }
}

abstract class _RateChanged implements FiltersEvent {
  const factory _RateChanged(int rate) = _$_RateChanged;

  int get rate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RateChangedCopyWith<_RateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CloseCopyWith<$Res> {
  factory _$CloseCopyWith(_Close value, $Res Function(_Close) then) =
      __$CloseCopyWithImpl<$Res>;
}

/// @nodoc
class __$CloseCopyWithImpl<$Res> extends _$FiltersEventCopyWithImpl<$Res>
    implements _$CloseCopyWith<$Res> {
  __$CloseCopyWithImpl(_Close _value, $Res Function(_Close) _then)
      : super(_value, (v) => _then(v as _Close));

  @override
  _Close get _value => super._value as _Close;
}

/// @nodoc

class _$_Close implements _Close {
  const _$_Close();

  @override
  String toString() {
    return 'FiltersEvent.close()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Close);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String sort) sortChanged,
    required TResult Function(double minPrice, double maxPrice) pricesChanged,
    required TResult Function(int rate) rateChanged,
    required TResult Function() close,
    required TResult Function() reset,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_PricesChanged value) pricesChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_Close value) close,
    required TResult Function(_FiltersReset value) reset,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class _Close implements FiltersEvent {
  const factory _Close() = _$_Close;
}

/// @nodoc
abstract class _$FiltersResetCopyWith<$Res> {
  factory _$FiltersResetCopyWith(
          _FiltersReset value, $Res Function(_FiltersReset) then) =
      __$FiltersResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$FiltersResetCopyWithImpl<$Res> extends _$FiltersEventCopyWithImpl<$Res>
    implements _$FiltersResetCopyWith<$Res> {
  __$FiltersResetCopyWithImpl(
      _FiltersReset _value, $Res Function(_FiltersReset) _then)
      : super(_value, (v) => _then(v as _FiltersReset));

  @override
  _FiltersReset get _value => super._value as _FiltersReset;
}

/// @nodoc

class _$_FiltersReset implements _FiltersReset {
  const _$_FiltersReset();

  @override
  String toString() {
    return 'FiltersEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FiltersReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String sort) sortChanged,
    required TResult Function(double minPrice, double maxPrice) pricesChanged,
    required TResult Function(int rate) rateChanged,
    required TResult Function() close,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String sort)? sortChanged,
    TResult Function(double minPrice, double maxPrice)? pricesChanged,
    TResult Function(int rate)? rateChanged,
    TResult Function()? close,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_PricesChanged value) pricesChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_Close value) close,
    required TResult Function(_FiltersReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_PricesChanged value)? pricesChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_Close value)? close,
    TResult Function(_FiltersReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _FiltersReset implements FiltersEvent {
  const factory _FiltersReset() = _$_FiltersReset;
}

/// @nodoc
class _$FiltersStateTearOff {
  const _$FiltersStateTearOff();

  _FiltersState call(
      {required String? sort,
      required double? minPrice,
      required double? maxPrice,
      required int? rate}) {
    return _FiltersState(
      sort: sort,
      minPrice: minPrice,
      maxPrice: maxPrice,
      rate: rate,
    );
  }
}

/// @nodoc
const $FiltersState = _$FiltersStateTearOff();

/// @nodoc
mixin _$FiltersState {
  String? get sort => throw _privateConstructorUsedError;
  double? get minPrice => throw _privateConstructorUsedError;
  double? get maxPrice => throw _privateConstructorUsedError;
  int? get rate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FiltersStateCopyWith<FiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersStateCopyWith<$Res> {
  factory $FiltersStateCopyWith(
          FiltersState value, $Res Function(FiltersState) then) =
      _$FiltersStateCopyWithImpl<$Res>;
  $Res call({String? sort, double? minPrice, double? maxPrice, int? rate});
}

/// @nodoc
class _$FiltersStateCopyWithImpl<$Res> implements $FiltersStateCopyWith<$Res> {
  _$FiltersStateCopyWithImpl(this._value, this._then);

  final FiltersState _value;
  // ignore: unused_field
  final $Res Function(FiltersState) _then;

  @override
  $Res call({
    Object? sort = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
      minPrice: minPrice == freezed
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: maxPrice == freezed
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FiltersStateCopyWith<$Res>
    implements $FiltersStateCopyWith<$Res> {
  factory _$FiltersStateCopyWith(
          _FiltersState value, $Res Function(_FiltersState) then) =
      __$FiltersStateCopyWithImpl<$Res>;
  @override
  $Res call({String? sort, double? minPrice, double? maxPrice, int? rate});
}

/// @nodoc
class __$FiltersStateCopyWithImpl<$Res> extends _$FiltersStateCopyWithImpl<$Res>
    implements _$FiltersStateCopyWith<$Res> {
  __$FiltersStateCopyWithImpl(
      _FiltersState _value, $Res Function(_FiltersState) _then)
      : super(_value, (v) => _then(v as _FiltersState));

  @override
  _FiltersState get _value => super._value as _FiltersState;

  @override
  $Res call({
    Object? sort = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? rate = freezed,
  }) {
    return _then(_FiltersState(
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
      minPrice: minPrice == freezed
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: maxPrice == freezed
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_FiltersState implements _FiltersState {
  const _$_FiltersState(
      {required this.sort,
      required this.minPrice,
      required this.maxPrice,
      required this.rate});

  @override
  final String? sort;
  @override
  final double? minPrice;
  @override
  final double? maxPrice;
  @override
  final int? rate;

  @override
  String toString() {
    return 'FiltersState(sort: $sort, minPrice: $minPrice, maxPrice: $maxPrice, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FiltersState &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)) &&
            (identical(other.minPrice, minPrice) ||
                const DeepCollectionEquality()
                    .equals(other.minPrice, minPrice)) &&
            (identical(other.maxPrice, maxPrice) ||
                const DeepCollectionEquality()
                    .equals(other.maxPrice, maxPrice)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sort) ^
      const DeepCollectionEquality().hash(minPrice) ^
      const DeepCollectionEquality().hash(maxPrice) ^
      const DeepCollectionEquality().hash(rate);

  @JsonKey(ignore: true)
  @override
  _$FiltersStateCopyWith<_FiltersState> get copyWith =>
      __$FiltersStateCopyWithImpl<_FiltersState>(this, _$identity);
}

abstract class _FiltersState implements FiltersState {
  const factory _FiltersState(
      {required String? sort,
      required double? minPrice,
      required double? maxPrice,
      required int? rate}) = _$_FiltersState;

  @override
  String? get sort => throw _privateConstructorUsedError;
  @override
  double? get minPrice => throw _privateConstructorUsedError;
  @override
  double? get maxPrice => throw _privateConstructorUsedError;
  @override
  int? get rate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FiltersStateCopyWith<_FiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}
