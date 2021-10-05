import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:super_smash_fighters/domain/core/character.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';

@Collection()
class Universe {
  int? id;

  String? objectId;
  @Index(indexType: IndexType.words)
  String? name;

  String? description;

  Universe({
    this.id,
    this.objectId,
    this.name,
    this.description,
  });

  factory Universe.fromDomain(UniverseDomain universe) {
    return Universe(
      id: universe.id,
      objectId: universe.objectId,
      name: universe.name,
      description: universe.description,
    );
  }

  UniverseDomain toDomain() {
    return UniverseDomain(
      id: this.id ?? 0,
      objectId: this.objectId!,
      name: this.name!,
      description: this.description!,
    );
  }

  factory Universe.fromJson(Map<String, dynamic> json) => Universe(
        id: json['id'],
        objectId: json['objectId'],
        name: json['name'],
      );
}
