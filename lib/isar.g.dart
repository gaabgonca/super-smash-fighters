// ignore_for_file: unused_import, implementation_imports

import 'dart:ffi';
import 'dart:convert';
import 'dart:isolate';
import 'dart:typed_data';
import 'dart:io';
import 'package:isar/isar.dart';
import 'package:isar/src/isar_native.dart';
import 'package:isar/src/query_builder.dart';
import 'package:ffi/ffi.dart';
import 'package:path/path.dart' as p;
import 'infrastructure/universes/universe_dto.dart';
import 'infrastructure/characters/character_dto.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/widgets.dart';

const _utf8Encoder = Utf8Encoder();

final _schema =
    '[{"name":"Universe","idProperty":"id","properties":[{"name":"id","type":3},{"name":"objectID","type":5},{"name":"name","type":5},{"name":"description","type":5}],"indexes":[{"unique":false,"replace":false,"properties":[{"name":"name","indexType":2,"caseSensitive":true}]}],"links":[]},{"name":"Character","idProperty":"id","properties":[{"name":"id","type":3},{"name":"objectID","type":5},{"name":"name","type":5},{"name":"universe","type":5},{"name":"price","type":5},{"name":"popular","type":0},{"name":"rate","type":3},{"name":"downloads","type":5},{"name":"description","type":5},{"name":"imageURL","type":5}],"indexes":[{"unique":false,"replace":false,"properties":[{"name":"name","indexType":2,"caseSensitive":true}]}],"links":[]}]';

Future<Isar> openIsar(
    {String name = 'isar',
    String? directory,
    int maxSize = 1000000000,
    Uint8List? encryptionKey}) async {
  final path = await _preparePath(directory);
  return openIsarInternal(
      name: name,
      directory: path,
      maxSize: maxSize,
      encryptionKey: encryptionKey,
      schema: _schema,
      getCollections: (isar) {
        final collectionPtrPtr = malloc<Pointer>();
        final propertyOffsetsPtr = malloc<Uint32>(10);
        final propertyOffsets = propertyOffsetsPtr.asTypedList(10);
        final collections = <String, IsarCollection>{};
        nCall(IC.isar_get_collection(isar.ptr, collectionPtrPtr, 0));
        IC.isar_get_property_offsets(
            collectionPtrPtr.value, propertyOffsetsPtr);
        collections['Universe'] = IsarCollectionImpl<Universe>(
          isar: isar,
          adapter: _UniverseAdapter(),
          ptr: collectionPtrPtr.value,
          propertyOffsets: propertyOffsets.sublist(0, 4),
          propertyIds: {'id': 0, 'objectID': 1, 'name': 2, 'description': 3},
          indexIds: {'name': 0},
          linkIds: {},
          backlinkIds: {},
          getId: (obj) => obj.id,
          setId: (obj, id) => obj.id = id,
        );
        nCall(IC.isar_get_collection(isar.ptr, collectionPtrPtr, 1));
        IC.isar_get_property_offsets(
            collectionPtrPtr.value, propertyOffsetsPtr);
        collections['Character'] = IsarCollectionImpl<Character>(
          isar: isar,
          adapter: _CharacterAdapter(),
          ptr: collectionPtrPtr.value,
          propertyOffsets: propertyOffsets.sublist(0, 10),
          propertyIds: {
            'id': 0,
            'objectID': 1,
            'name': 2,
            'universe': 3,
            'price': 4,
            'popular': 5,
            'rate': 6,
            'downloads': 7,
            'description': 8,
            'imageURL': 9
          },
          indexIds: {'name': 0},
          linkIds: {},
          backlinkIds: {},
          getId: (obj) => obj.id,
          setId: (obj, id) => obj.id = id,
        );
        malloc.free(propertyOffsetsPtr);
        malloc.free(collectionPtrPtr);

        return collections;
      });
}

Future<String> _preparePath(String? path) async {
  if (path == null || p.isRelative(path)) {
    WidgetsFlutterBinding.ensureInitialized();
    final dir = await getApplicationDocumentsDirectory();
    return p.join(dir.path, path ?? 'isar');
  } else {
    return path;
  }
}

class _UniverseAdapter extends TypeAdapter<Universe> {
  @override
  int serialize(IsarCollectionImpl<Universe> collection, RawObject rawObj,
      Universe object, List<int> offsets,
      [int? existingBufferSize]) {
    var dynamicSize = 0;
    final value0 = object.id;
    final _id = value0;
    final value1 = object.objectID;
    Uint8List? _objectID;
    if (value1 != null) {
      _objectID = _utf8Encoder.convert(value1);
    }
    dynamicSize += _objectID?.length ?? 0;
    final value2 = object.name;
    Uint8List? _name;
    if (value2 != null) {
      _name = _utf8Encoder.convert(value2);
    }
    dynamicSize += _name?.length ?? 0;
    final value3 = object.description;
    Uint8List? _description;
    if (value3 != null) {
      _description = _utf8Encoder.convert(value3);
    }
    dynamicSize += _description?.length ?? 0;
    final size = dynamicSize + 34;

    late int bufferSize;
    if (existingBufferSize != null) {
      if (existingBufferSize < size) {
        malloc.free(rawObj.buffer);
        rawObj.buffer = malloc(size);
        bufferSize = size;
      } else {
        bufferSize = existingBufferSize;
      }
    } else {
      rawObj.buffer = malloc(size);
      bufferSize = size;
    }
    rawObj.buffer_length = size;
    final buffer = rawObj.buffer.asTypedList(size);
    final writer = BinaryWriter(buffer, 34);
    writer.writeLong(offsets[0], _id);
    writer.writeBytes(offsets[1], _objectID);
    writer.writeBytes(offsets[2], _name);
    writer.writeBytes(offsets[3], _description);
    return bufferSize;
  }

  @override
  Universe deserialize(IsarCollectionImpl<Universe> collection,
      BinaryReader reader, List<int> offsets) {
    final object = Universe();
    object.id = reader.readLongOrNull(offsets[0]);
    object.objectID = reader.readStringOrNull(offsets[1]);
    object.name = reader.readStringOrNull(offsets[2]);
    object.description = reader.readStringOrNull(offsets[3]);
    return object;
  }

  @override
  P deserializeProperty<P>(BinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case 0:
        return (reader.readLongOrNull(offset)) as P;
      case 1:
        return (reader.readStringOrNull(offset)) as P;
      case 2:
        return (reader.readStringOrNull(offset)) as P;
      case 3:
        return (reader.readStringOrNull(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }
}

class _CharacterAdapter extends TypeAdapter<Character> {
  @override
  int serialize(IsarCollectionImpl<Character> collection, RawObject rawObj,
      Character object, List<int> offsets,
      [int? existingBufferSize]) {
    var dynamicSize = 0;
    final value0 = object.id;
    final _id = value0;
    final value1 = object.objectID;
    Uint8List? _objectID;
    if (value1 != null) {
      _objectID = _utf8Encoder.convert(value1);
    }
    dynamicSize += _objectID?.length ?? 0;
    final value2 = object.name;
    Uint8List? _name;
    if (value2 != null) {
      _name = _utf8Encoder.convert(value2);
    }
    dynamicSize += _name?.length ?? 0;
    final value3 = object.universe;
    Uint8List? _universe;
    if (value3 != null) {
      _universe = _utf8Encoder.convert(value3);
    }
    dynamicSize += _universe?.length ?? 0;
    final value4 = object.price;
    Uint8List? _price;
    if (value4 != null) {
      _price = _utf8Encoder.convert(value4);
    }
    dynamicSize += _price?.length ?? 0;
    final value5 = object.popular;
    final _popular = value5;
    final value6 = object.rate;
    final _rate = value6;
    final value7 = object.downloads;
    Uint8List? _downloads;
    if (value7 != null) {
      _downloads = _utf8Encoder.convert(value7);
    }
    dynamicSize += _downloads?.length ?? 0;
    final value8 = object.description;
    Uint8List? _description;
    if (value8 != null) {
      _description = _utf8Encoder.convert(value8);
    }
    dynamicSize += _description?.length ?? 0;
    final value9 = object.imageURL;
    Uint8List? _imageURL;
    if (value9 != null) {
      _imageURL = _utf8Encoder.convert(value9);
    }
    dynamicSize += _imageURL?.length ?? 0;
    final size = dynamicSize + 75;

    late int bufferSize;
    if (existingBufferSize != null) {
      if (existingBufferSize < size) {
        malloc.free(rawObj.buffer);
        rawObj.buffer = malloc(size);
        bufferSize = size;
      } else {
        bufferSize = existingBufferSize;
      }
    } else {
      rawObj.buffer = malloc(size);
      bufferSize = size;
    }
    rawObj.buffer_length = size;
    final buffer = rawObj.buffer.asTypedList(size);
    final writer = BinaryWriter(buffer, 75);
    writer.writeLong(offsets[0], _id);
    writer.writeBytes(offsets[1], _objectID);
    writer.writeBytes(offsets[2], _name);
    writer.writeBytes(offsets[3], _universe);
    writer.writeBytes(offsets[4], _price);
    writer.writeBool(offsets[5], _popular);
    writer.writeLong(offsets[6], _rate);
    writer.writeBytes(offsets[7], _downloads);
    writer.writeBytes(offsets[8], _description);
    writer.writeBytes(offsets[9], _imageURL);
    return bufferSize;
  }

  @override
  Character deserialize(IsarCollectionImpl<Character> collection,
      BinaryReader reader, List<int> offsets) {
    final object = Character();
    object.id = reader.readLongOrNull(offsets[0]);
    object.objectID = reader.readStringOrNull(offsets[1]);
    object.name = reader.readStringOrNull(offsets[2]);
    object.universe = reader.readStringOrNull(offsets[3]);
    object.price = reader.readStringOrNull(offsets[4]);
    object.popular = reader.readBoolOrNull(offsets[5]);
    object.rate = reader.readLongOrNull(offsets[6]);
    object.downloads = reader.readStringOrNull(offsets[7]);
    object.description = reader.readStringOrNull(offsets[8]);
    object.imageURL = reader.readStringOrNull(offsets[9]);
    return object;
  }

  @override
  P deserializeProperty<P>(BinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case 0:
        return (reader.readLongOrNull(offset)) as P;
      case 1:
        return (reader.readStringOrNull(offset)) as P;
      case 2:
        return (reader.readStringOrNull(offset)) as P;
      case 3:
        return (reader.readStringOrNull(offset)) as P;
      case 4:
        return (reader.readStringOrNull(offset)) as P;
      case 5:
        return (reader.readBoolOrNull(offset)) as P;
      case 6:
        return (reader.readLongOrNull(offset)) as P;
      case 7:
        return (reader.readStringOrNull(offset)) as P;
      case 8:
        return (reader.readStringOrNull(offset)) as P;
      case 9:
        return (reader.readStringOrNull(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }
}

extension GetCollection on Isar {
  IsarCollection<Universe> get universes {
    return getCollection('Universe');
  }

  IsarCollection<Character> get characters {
    return getCollection('Character');
  }
}

extension UniverseQueryWhereSort on QueryBuilder<Universe, QWhere> {
  QueryBuilder<Universe, QAfterWhere> anyId() {
    return addWhereClause(WhereClause(indexName: 'id'));
  }
}

extension UniverseQueryWhere on QueryBuilder<Universe, QWhereClause> {
  QueryBuilder<Universe, QAfterWhereClause> nameWordEqualTo(String? name) {
    return addWhereClause(WhereClause(
      indexName: 'name',
      upper: [name],
      includeUpper: true,
      lower: [name],
      includeLower: true,
    ));
  }

  QueryBuilder<Universe, QAfterWhereClause> nameWordStartsWith(String? value) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addWhereClause(WhereClause(
      indexName: 'name',
      lower: [convertedValue],
      upper: ['$convertedValue\u{FFFFF}'],
      includeLower: true,
      includeUpper: true,
    ));
  }
}

extension CharacterQueryWhereSort on QueryBuilder<Character, QWhere> {
  QueryBuilder<Character, QAfterWhere> anyId() {
    return addWhereClause(WhereClause(indexName: 'id'));
  }
}

extension CharacterQueryWhere on QueryBuilder<Character, QWhereClause> {
  QueryBuilder<Character, QAfterWhereClause> nameWordEqualTo(String? name) {
    return addWhereClause(WhereClause(
      indexName: 'name',
      upper: [name],
      includeUpper: true,
      lower: [name],
      includeLower: true,
    ));
  }

  QueryBuilder<Character, QAfterWhereClause> nameWordStartsWith(String? value) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addWhereClause(WhereClause(
      indexName: 'name',
      lower: [convertedValue],
      upper: ['$convertedValue\u{FFFFF}'],
      includeLower: true,
      includeUpper: true,
    ));
  }
}

extension UniverseQueryFilter on QueryBuilder<Universe, QFilterCondition> {
  QueryBuilder<Universe, QAfterFilterCondition> idIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> idEqualTo(int? value) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> idGreaterThan(int? value) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Gt,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> idLessThan(int? value) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Lt,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> idBetween(
      int? lower, int? upper) {
    return addFilterCondition(FilterCondition.between(
      property: 'id',
      lower: lower,
      upper: upper,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> objectIDIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'objectID',
      value: null,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> objectIDEqualTo(String? value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'objectID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> objectIDStartsWith(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.StartsWith,
      property: 'objectID',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> objectIDEndsWith(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.EndsWith,
      property: 'objectID',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> objectIDContains(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'objectID',
      value: '*$convertedValue*',
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> objectIDMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'objectID',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> nameIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'name',
      value: null,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> nameEqualTo(String? value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> nameStartsWith(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.StartsWith,
      property: 'name',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> nameEndsWith(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.EndsWith,
      property: 'name',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> nameContains(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'name',
      value: '*$convertedValue*',
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> descriptionIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'description',
      value: null,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> descriptionEqualTo(
      String? value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> descriptionStartsWith(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.StartsWith,
      property: 'description',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> descriptionEndsWith(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.EndsWith,
      property: 'description',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> descriptionContains(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'description',
      value: '*$convertedValue*',
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Universe, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension CharacterQueryFilter on QueryBuilder<Character, QFilterCondition> {
  QueryBuilder<Character, QAfterFilterCondition> idIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> idEqualTo(int? value) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> idGreaterThan(int? value) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Gt,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> idLessThan(int? value) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Lt,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> idBetween(
      int? lower, int? upper) {
    return addFilterCondition(FilterCondition.between(
      property: 'id',
      lower: lower,
      upper: upper,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> objectIDIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'objectID',
      value: null,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> objectIDEqualTo(String? value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'objectID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> objectIDStartsWith(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.StartsWith,
      property: 'objectID',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> objectIDEndsWith(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.EndsWith,
      property: 'objectID',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> objectIDContains(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'objectID',
      value: '*$convertedValue*',
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> objectIDMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'objectID',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> nameIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'name',
      value: null,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> nameEqualTo(String? value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> nameStartsWith(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.StartsWith,
      property: 'name',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> nameEndsWith(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.EndsWith,
      property: 'name',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> nameContains(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'name',
      value: '*$convertedValue*',
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> universeIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'universe',
      value: null,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> universeEqualTo(String? value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'universe',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> universeStartsWith(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.StartsWith,
      property: 'universe',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> universeEndsWith(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.EndsWith,
      property: 'universe',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> universeContains(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'universe',
      value: '*$convertedValue*',
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> universeMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'universe',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> priceIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'price',
      value: null,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> priceEqualTo(String? value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'price',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> priceStartsWith(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.StartsWith,
      property: 'price',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> priceEndsWith(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.EndsWith,
      property: 'price',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> priceContains(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'price',
      value: '*$convertedValue*',
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> priceMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'price',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> popularIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'popular',
      value: null,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> popularEqualTo(bool? value) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'popular',
      value: value,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> rateIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'rate',
      value: null,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> rateEqualTo(int? value) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'rate',
      value: value,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> rateGreaterThan(int? value) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Gt,
      property: 'rate',
      value: value,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> rateLessThan(int? value) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Lt,
      property: 'rate',
      value: value,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> rateBetween(
      int? lower, int? upper) {
    return addFilterCondition(FilterCondition.between(
      property: 'rate',
      lower: lower,
      upper: upper,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> downloadsIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'downloads',
      value: null,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> downloadsEqualTo(String? value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'downloads',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> downloadsStartsWith(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.StartsWith,
      property: 'downloads',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> downloadsEndsWith(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.EndsWith,
      property: 'downloads',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> downloadsContains(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'downloads',
      value: '*$convertedValue*',
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> downloadsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'downloads',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> descriptionIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'description',
      value: null,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> descriptionEqualTo(
      String? value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> descriptionStartsWith(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.StartsWith,
      property: 'description',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> descriptionEndsWith(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.EndsWith,
      property: 'description',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> descriptionContains(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'description',
      value: '*$convertedValue*',
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> imageURLIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'imageURL',
      value: null,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> imageURLEqualTo(String? value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Eq,
      property: 'imageURL',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> imageURLStartsWith(
      String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.StartsWith,
      property: 'imageURL',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> imageURLEndsWith(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.EndsWith,
      property: 'imageURL',
      value: convertedValue,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> imageURLContains(String? value,
      {bool caseSensitive = true}) {
    final convertedValue = value;
    assert(convertedValue != null, 'Null values are not allowed');
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'imageURL',
      value: '*$convertedValue*',
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Character, QAfterFilterCondition> imageURLMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.Matches,
      property: 'imageURL',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension UniverseQueryLinks on QueryBuilder<Universe, QFilterCondition> {}

extension CharacterQueryLinks on QueryBuilder<Character, QFilterCondition> {}

extension UniverseQueryWhereSortBy on QueryBuilder<Universe, QSortBy> {
  QueryBuilder<Universe, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.Asc);
  }

  QueryBuilder<Universe, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.Desc);
  }

  QueryBuilder<Universe, QAfterSortBy> sortByObjectID() {
    return addSortByInternal('objectID', Sort.Asc);
  }

  QueryBuilder<Universe, QAfterSortBy> sortByObjectIDDesc() {
    return addSortByInternal('objectID', Sort.Desc);
  }

  QueryBuilder<Universe, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.Asc);
  }

  QueryBuilder<Universe, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.Desc);
  }

  QueryBuilder<Universe, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.Asc);
  }

  QueryBuilder<Universe, QAfterSortBy> sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.Desc);
  }
}

extension UniverseQueryWhereSortThenBy on QueryBuilder<Universe, QSortThenBy> {
  QueryBuilder<Universe, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.Asc);
  }

  QueryBuilder<Universe, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.Desc);
  }

  QueryBuilder<Universe, QAfterSortBy> thenByObjectID() {
    return addSortByInternal('objectID', Sort.Asc);
  }

  QueryBuilder<Universe, QAfterSortBy> thenByObjectIDDesc() {
    return addSortByInternal('objectID', Sort.Desc);
  }

  QueryBuilder<Universe, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.Asc);
  }

  QueryBuilder<Universe, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.Desc);
  }

  QueryBuilder<Universe, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.Asc);
  }

  QueryBuilder<Universe, QAfterSortBy> thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.Desc);
  }
}

extension CharacterQueryWhereSortBy on QueryBuilder<Character, QSortBy> {
  QueryBuilder<Character, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByObjectID() {
    return addSortByInternal('objectID', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByObjectIDDesc() {
    return addSortByInternal('objectID', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByUniverse() {
    return addSortByInternal('universe', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByUniverseDesc() {
    return addSortByInternal('universe', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByPrice() {
    return addSortByInternal('price', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByPriceDesc() {
    return addSortByInternal('price', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByPopular() {
    return addSortByInternal('popular', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByPopularDesc() {
    return addSortByInternal('popular', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByRate() {
    return addSortByInternal('rate', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByRateDesc() {
    return addSortByInternal('rate', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByDownloads() {
    return addSortByInternal('downloads', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByDownloadsDesc() {
    return addSortByInternal('downloads', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByImageURL() {
    return addSortByInternal('imageURL', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> sortByImageURLDesc() {
    return addSortByInternal('imageURL', Sort.Desc);
  }
}

extension CharacterQueryWhereSortThenBy
    on QueryBuilder<Character, QSortThenBy> {
  QueryBuilder<Character, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByObjectID() {
    return addSortByInternal('objectID', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByObjectIDDesc() {
    return addSortByInternal('objectID', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByUniverse() {
    return addSortByInternal('universe', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByUniverseDesc() {
    return addSortByInternal('universe', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByPrice() {
    return addSortByInternal('price', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByPriceDesc() {
    return addSortByInternal('price', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByPopular() {
    return addSortByInternal('popular', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByPopularDesc() {
    return addSortByInternal('popular', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByRate() {
    return addSortByInternal('rate', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByRateDesc() {
    return addSortByInternal('rate', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByDownloads() {
    return addSortByInternal('downloads', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByDownloadsDesc() {
    return addSortByInternal('downloads', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.Desc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByImageURL() {
    return addSortByInternal('imageURL', Sort.Asc);
  }

  QueryBuilder<Character, QAfterSortBy> thenByImageURLDesc() {
    return addSortByInternal('imageURL', Sort.Desc);
  }
}

extension UniverseQueryWhereDistinct on QueryBuilder<Universe, QDistinct> {
  QueryBuilder<Universe, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Universe, QDistinct> distinctByObjectID(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('objectID', caseSensitive: caseSensitive);
  }

  QueryBuilder<Universe, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Universe, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }
}

extension CharacterQueryWhereDistinct on QueryBuilder<Character, QDistinct> {
  QueryBuilder<Character, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Character, QDistinct> distinctByObjectID(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('objectID', caseSensitive: caseSensitive);
  }

  QueryBuilder<Character, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Character, QDistinct> distinctByUniverse(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('universe', caseSensitive: caseSensitive);
  }

  QueryBuilder<Character, QDistinct> distinctByPrice(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('price', caseSensitive: caseSensitive);
  }

  QueryBuilder<Character, QDistinct> distinctByPopular() {
    return addDistinctByInternal('popular');
  }

  QueryBuilder<Character, QDistinct> distinctByRate() {
    return addDistinctByInternal('rate');
  }

  QueryBuilder<Character, QDistinct> distinctByDownloads(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('downloads', caseSensitive: caseSensitive);
  }

  QueryBuilder<Character, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<Character, QDistinct> distinctByImageURL(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('imageURL', caseSensitive: caseSensitive);
  }
}

extension UniverseQueryProperty on QueryBuilder<Universe, QQueryProperty> {
  QueryBuilder<int?, QQueryOperations> idProperty() {
    return addPropertyName('id');
  }

  QueryBuilder<String?, QQueryOperations> objectIDProperty() {
    return addPropertyName('objectID');
  }

  QueryBuilder<String?, QQueryOperations> nameProperty() {
    return addPropertyName('name');
  }

  QueryBuilder<String?, QQueryOperations> descriptionProperty() {
    return addPropertyName('description');
  }
}

extension CharacterQueryProperty on QueryBuilder<Character, QQueryProperty> {
  QueryBuilder<int?, QQueryOperations> idProperty() {
    return addPropertyName('id');
  }

  QueryBuilder<String?, QQueryOperations> objectIDProperty() {
    return addPropertyName('objectID');
  }

  QueryBuilder<String?, QQueryOperations> nameProperty() {
    return addPropertyName('name');
  }

  QueryBuilder<String?, QQueryOperations> universeProperty() {
    return addPropertyName('universe');
  }

  QueryBuilder<String?, QQueryOperations> priceProperty() {
    return addPropertyName('price');
  }

  QueryBuilder<bool?, QQueryOperations> popularProperty() {
    return addPropertyName('popular');
  }

  QueryBuilder<int?, QQueryOperations> rateProperty() {
    return addPropertyName('rate');
  }

  QueryBuilder<String?, QQueryOperations> downloadsProperty() {
    return addPropertyName('downloads');
  }

  QueryBuilder<String?, QQueryOperations> descriptionProperty() {
    return addPropertyName('description');
  }

  QueryBuilder<String?, QQueryOperations> imageURLProperty() {
    return addPropertyName('imageURL');
  }
}
