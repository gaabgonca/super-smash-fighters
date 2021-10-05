import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:super_smash_fighters/domain/core/character.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';

@Collection()
class Universe {
  int? id;

  String? objectID;
  @Index(indexType: IndexType.words)
  String? name;

  String? description;

  Universe({
    this.id,
    this.objectID,
    this.name,
    this.description,
  });

  factory Universe.fromDomain(UniverseDomain universe) {
    return Universe(
      id: universe.id,
      objectID: universe.objectId,
      name: universe.name,
      description: universe.description,
    );
  }

  UniverseDomain toDomain() {
    return UniverseDomain(
      id: this.id ?? 0,
      objectId: this.objectID ?? '',
      name: this.name!,
      description: this.description ?? '',
    );
  }

  factory Universe.fromJson(Map<String, dynamic> json) => Universe(
      id: json['id'],
      objectID: json['objectID'],
      name: json['name'],
      description: json['description']);
}
