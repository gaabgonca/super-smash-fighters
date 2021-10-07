part of 'filters_bloc.dart';

@freezed
class FiltersEvent with _$FiltersEvent {
  const factory FiltersEvent.started() = _Started;
  const factory FiltersEvent.sortChanged(String sort) = _SortChanged;
  const factory FiltersEvent.pricesChanged(double minPrice, double maxPrice) =
      _PricesChanged;
  const factory FiltersEvent.rateChanged(int rate) = _RateChanged;
  const factory FiltersEvent.close() = _Close;
  const factory FiltersEvent.reset() = _FiltersReset;
}
