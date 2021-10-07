import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_smash_fighters/application/characters/characters_bloc.dart';
import 'package:super_smash_fighters/application/filters/bloc/filters_bloc.dart';
import 'package:super_smash_fighters/application/universe_filter/bloc/universefilter_bloc.dart';
import 'package:super_smash_fighters/application/universes/universes_bloc.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';
import 'package:super_smash_fighters/presentation/onboarding/first_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/onboarding_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/second_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/third_page.dart';
import 'package:super_smash_fighters/presentation/routes/router.gr.dart';
import 'package:super_smash_fighters/presentation/splash/splash_page.dart';

import '../../injection.dart';

class MyApp extends StatelessWidget {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UniversesBloc>(create: (context) {
          final bloc = getIt<UniversesBloc>();
          bloc.add(const UniversesEvent.watchAllStarted());
          return bloc;
        }),
        BlocProvider<CharactersBloc>(create: (context) {
          final bloc = getIt<CharactersBloc>();
          bloc.add(
              CharactersEvent.watchUniverseStarted(UniverseDomain.empty()));
          return bloc;
        }),
        BlocProvider<UniversefilterBloc>(create: (context) {
          final bloc = getIt<UniversefilterBloc>();

          return bloc;
        }),
        BlocProvider<FiltersBloc>(create: (context) {
          final bloc = getIt<FiltersBloc>();
          return bloc;
        }),
      ],
      child: MaterialApp.router(
        routerDelegate: _router.delegate(),
        routeInformationParser: _router.defaultRouteParser(),
        title: 'Super Smash Catalog',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
      ),
    );
  }
}
