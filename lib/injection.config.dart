// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i6;

import 'application/characters/characters_bloc.dart' as _i13;
import 'application/universe_filter/bloc/universefilter_bloc.dart' as _i7;
import 'application/universes/universes_bloc.dart' as _i12;
import 'domain/character_list/i_character_repository.dart' as _i8;
import 'domain/universe_list/i_universe_repository.dart' as _i10;
import 'infrastructure/characters/character_repository.dart' as _i9;
import 'infrastructure/core/isar_injectable_module.dart' as _i14;
import 'infrastructure/universes/universe_repository.dart' as _i11;
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
  await gh.lazySingletonAsync<_i6.Isar>(() => isarInjectableModule.isar,
      preResolve: true);
  gh.factory<_i7.UniversefilterBloc>(() => _i7.UniversefilterBloc());
  gh.lazySingleton<_i8.ICharacterRepository>(
      () => _i9.CharacterRepository(get<_i5.Client>(), get<_i6.Isar>()));
  gh.lazySingleton<_i10.IUniverseRepository>(
      () => _i11.UniverseRepository(get<_i6.Isar>(), get<_i5.Client>()));
  gh.factory<_i12.UniversesBloc>(
      () => _i12.UniversesBloc(get<_i10.IUniverseRepository>()));
  gh.factory<_i13.CharactersBloc>(
      () => _i13.CharactersBloc(get<_i8.ICharacterRepository>()));
  return get;
}

class _$IsarInjectableModule extends _i14.IsarInjectableModule {}
