import 'package:freezed_annotation/freezed_annotation.dart';

part 'universe.freezed.dart';
part 'universe.g.dart';

@freezed
abstract class UniverseDomain implements _$UniverseDomain {
  const UniverseDomain._();

  const factory UniverseDomain(
      {required int id,
      required String objectId,
      required String name,
      required String description}) = _Universe;

  factory UniverseDomain.empty() => UniverseDomain(
        id: 0,
        objectId: '',
        name: '',
        description: '',
      );
  factory UniverseDomain.fromJson(Map<String, dynamic> json) =>
      _$UniverseDomainFromJson(json);
}
