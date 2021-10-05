// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i4;

import 'domain/universe_list/i_universe_repository.dart' as _i5;
import 'infrastructure/core/isar_injectable_module.dart' as _i7;
import 'infrastructure/universes/universe_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final isarInjectableModule = _$IsarInjectableModule();
  gh.lazySingleton<_i3.Client>(() => isarInjectableModule.httpClient);
  gh.lazySingletonAsync<_i4.Isar>(() => isarInjectableModule.isar);
  gh.lazySingletonAsync<_i5.IUniverseRepository>(() async =>
      _i6.UniverseRepository(
          await get.getAsync<_i4.Isar>(), get<_i3.Client>()));
  return get;
}

class _$IsarInjectableModule extends _i7.IsarInjectableModule {}
