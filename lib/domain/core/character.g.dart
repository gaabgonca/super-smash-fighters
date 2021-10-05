// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      id: json['id'] as int,
      objectId: json['objectId'] as String,
      name: json['name'] as String,
      universe: json['universe'] as String,
      price: json['price'] as String,
      popular: json['popular'] as bool,
      rate: json['rate'] as int,
      downloads: json['downloads'] as String,
      description: json['description'] as String,
      imageURL: json['imageURL'] as String,
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'id': instance.id,
      'objectId': instance.objectId,
      'name': instance.name,
      'universe': instance.universe,
      'price': instance.price,
      'popular': instance.popular,
      'rate': instance.rate,
      'downloads': instance.downloads,
      'description': instance.description,
      'imageURL': instance.imageURL,
    };
