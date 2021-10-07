// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i7;

import 'application/characters/characters_bloc.dart' as _i14;
import 'application/filters/bloc/filters_bloc.dart' as _i6;
import 'application/universe_filter/bloc/universefilter_bloc.dart' as _i8;
import 'application/universes/universes_bloc.dart' as _i13;
import 'domain/character_list/i_character_repository.dart' as _i9;
import 'domain/universe_list/i_universe_repository.dart' as _i11;
import 'infrastructure/characters/character_repository.dart' as _i10;
import 'infrastructure/core/isar_injectable_module.dart' as _i15;
import 'infrastructure/universes/universe_repository.dart' as _i12;
import 'presentation/character_list/character_list_page.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final isarInjectableModule = _$IsarInjectableModule();
  gh.factory<_i3.CharacterListPage>(
      () => _i3.CharacterListPage(key: get<_i4.Key>()));
  gh.lazySingleton<_i5.Client>(() => isarInjectableModule.httpClient);
  gh.factory<_i6.FiltersBloc>(() => _i6.FiltersBloc());
  await gh.lazySingletonAsync<_i7.Isar>(() => isarInjectableModule.isar,
      preResolve: true);
  gh.factory<_i8.UniversefilterBloc>(() => _i8.UniversefilterBloc());
  gh.lazySingleton<_i9.ICharacterRepository>(
      () => _i10.CharacterRepository(get<_i5.Client>(), get<_i7.Isar>()));
  gh.lazySingleton<_i11.IUniverseRepository>(
      () => _i12.UniverseRepository(get<_i7.Isar>(), get<_i5.Client>()));
  gh.factory<_i13.UniversesBloc>(
      () => _i13.UniversesBloc(get<_i11.IUniverseRepository>()));
  gh.factory<_i14.CharactersBloc>(
      () => _i14.CharactersBloc(get<_i9.ICharacterRepository>()));
  return get;
}

class _$IsarInjectableModule extends _i15.IsarInjectableModule {}
