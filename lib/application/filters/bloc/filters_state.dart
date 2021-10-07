part of 'filters_bloc.dart';

@freezed
class FiltersState with _$FiltersState {
  const factory FiltersState(
      {required String? sort,
      required double? minPrice,
      required double? maxPrice,
      required int? rate}) = _FiltersState;
  factory FiltersState.initial() => FiltersState(
        sort: 'Ascending',
        minPrice: 0,
        maxPrice: 1000,
        rate: 0,
      );
}
