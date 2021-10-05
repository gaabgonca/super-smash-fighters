import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:super_smash_fighters/domain/core/character.dart';

@Collection()
class Character {
  int? id;

  String? objectId;
  @Index(indexType: IndexType.words)
  String? name;

  String? universe;
  String? price;
  bool? popular;
  int? rate;
  String? downloads;
  String? description;
  String? imageUrl;

  Character(
      {this.id,
      this.objectId,
      this.name,
      this.universe,
      this.price,
      this.popular,
      this.rate,
      this.downloads,
      this.description,
      this.imageUrl});

  factory Character.fromDomain(CharacterDomain character) {
    return Character(
        id: character.id,
        objectId: character.objectId,
        name: character.name,
        universe: character.universe,
        price: character.price,
        popular: character.popular,
        rate: character.rate,
        downloads: character.downloads,
        description: character.description,
        imageUrl: character.imageUrl);
  }

  CharacterDomain toDomain() {
    return CharacterDomain(
        id: this.id ?? 0,
        objectId: this.objectId!,
        name: this.name!,
        universe: this.universe!,
        price: this.price!,
        popular: this.popular!,
        rate: this.rate!,
        downloads: this.downloads!,
        description: this.description!,
        imageUrl: this.imageUrl!);
  }

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        id: json['id'],
        objectId: json['objectId'],
        name: json['name'],
        universe: json['universe'],
        price: json['price'],
        popular: json['popular'],
        rate: json['rate'],
        downloads: json['downloads'],
        imageUrl: json['imageUrl'],
      );
}
