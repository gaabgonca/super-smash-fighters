import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
abstract class CharacterDomain implements _$CharacterDomain {
  const CharacterDomain._();

  const factory CharacterDomain(
      {required int id,
      required String objectId,
      required String name,
      required String universe,
      required String price,
      required bool popular,
      required int rate,
      required String downloads,
      required String description,
      required String imageUrl}) = _Character;

  factory CharacterDomain.empty() => CharacterDomain(
      id: 0,
      objectId: '',
      name: '',
      universe: '',
      price: '',
      popular: false,
      rate: 1,
      downloads: '',
      description: '',
      imageUrl: '');

  factory CharacterDomain.fromJson(Map<String, dynamic> json) =>
      _$CharacterDomainFromJson(json);
}
