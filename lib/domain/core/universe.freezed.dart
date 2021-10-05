// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'universe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniverseDomain _$UniverseDomainFromJson(Map<String, dynamic> json) {
  return _Universe.fromJson(json);
}

/// @nodoc
class _$UniverseDomainTearOff {
  const _$UniverseDomainTearOff();

  _Universe call(
      {required int id,
      required String objectId,
      required String name,
      required String description}) {
    return _Universe(
      id: id,
      objectId: objectId,
      name: name,
      description: description,
    );
  }

  UniverseDomain fromJson(Map<String, Object> json) {
    return UniverseDomain.fromJson(json);
  }
}

/// @nodoc
const $UniverseDomain = _$UniverseDomainTearOff();

/// @nodoc
mixin _$UniverseDomain {
  int get id => throw _privateConstructorUsedError;
  String get objectId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniverseDomainCopyWith<UniverseDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniverseDomainCopyWith<$Res> {
  factory $UniverseDomainCopyWith(
          UniverseDomain value, $Res Function(UniverseDomain) then) =
      _$UniverseDomainCopyWithImpl<$Res>;
  $Res call({int id, String objectId, String name, String description});
}

/// @nodoc
class _$UniverseDomainCopyWithImpl<$Res>
    implements $UniverseDomainCopyWith<$Res> {
  _$UniverseDomainCopyWithImpl(this._value, this._then);

  final UniverseDomain _value;
  // ignore: unused_field
  final $Res Function(UniverseDomain) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? objectId = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UniverseCopyWith<$Res>
    implements $UniverseDomainCopyWith<$Res> {
  factory _$UniverseCopyWith(_Universe value, $Res Function(_Universe) then) =
      __$UniverseCopyWithImpl<$Res>;
  @override
  $Res call({int id, String objectId, String name, String description});
}

/// @nodoc
class __$UniverseCopyWithImpl<$Res> extends _$UniverseDomainCopyWithImpl<$Res>
    implements _$UniverseCopyWith<$Res> {
  __$UniverseCopyWithImpl(_Universe _value, $Res Function(_Universe) _then)
      : super(_value, (v) => _then(v as _Universe));

  @override
  _Universe get _value => super._value as _Universe;

  @override
  $Res call({
    Object? id = freezed,
    Object? objectId = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_Universe(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Universe extends _Universe {
  const _$_Universe(
      {required this.id,
      required this.objectId,
      required this.name,
      required this.description})
      : super._();

  factory _$_Universe.fromJson(Map<String, dynamic> json) =>
      _$$_UniverseFromJson(json);

  @override
  final int id;
  @override
  final String objectId;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'UniverseDomain(id: $id, objectId: $objectId, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Universe &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$UniverseCopyWith<_Universe> get copyWith =>
      __$UniverseCopyWithImpl<_Universe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniverseToJson(this);
  }
}

abstract class _Universe extends UniverseDomain {
  const factory _Universe(
      {required int id,
      required String objectId,
      required String name,
      required String description}) = _$_Universe;
  const _Universe._() : super._();

  factory _Universe.fromJson(Map<String, dynamic> json) = _$_Universe.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get objectId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UniverseCopyWith<_Universe> get copyWith =>
      throw _privateConstructorUsedError;
}
