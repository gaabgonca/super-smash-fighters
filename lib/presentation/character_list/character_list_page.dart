import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:super_smash_fighters/application/characters/characters_bloc.dart';
import 'package:super_smash_fighters/application/universes/universes_bloc.dart';
import 'package:super_smash_fighters/domain/character_list/character_failure.dart';
import 'package:super_smash_fighters/domain/character_list/i_character_repository.dart';
import 'package:super_smash_fighters/domain/core/character.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';
import 'package:super_smash_fighters/domain/universe_list/i_universe_repository.dart';
import 'package:super_smash_fighters/domain/universe_list/universe_failure.dart';
import 'package:super_smash_fighters/infrastructure/universes/universe_repository.dart';
import 'package:super_smash_fighters/injection.dart';
import 'package:super_smash_fighters/presentation/character_list/widgets/character_card.dart';
import 'package:super_smash_fighters/presentation/character_list/widgets/characters_grid.dart';
import 'package:super_smash_fighters/presentation/character_list/widgets/universes_list.dart';
import 'package:super_smash_fighters/presentation/core/colors.dart';
import 'package:super_smash_fighters/presentation/core/build_context_x.dart';

@injectable
class CharacterListPage extends StatelessWidget {
  const CharacterListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fighters',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<UniversesBloc>(create: (context) {
            final bloc = getIt<UniversesBloc>();
            bloc.add(const UniversesEvent.watchAllStarted());
            return bloc;
          }),
          BlocProvider<CharactersBloc>(create: (context) {
            final bloc = getIt<CharactersBloc>();
            bloc.add(const CharactersEvent.deleteAll());
            return bloc;
          }),
        ],
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              BlocBuilder<UniversesBloc, UniversesState>(
                  builder: (context, state) {
                return state.map(
                  initial: (_) => Container(),
                  loadInProgress: (_) =>
                      const Center(child: CircularProgressIndicator()),
                  loadSuccess: (state) =>
                      UniversesList(universes: state.universes),
                  loadFailure: (failure) =>
                      const Center(child: Text('Universes load failure')),
                  deleteFailure: (failure) =>
                      const Center(child: Text('Universes delete failure')),
                );
              }),
              BlocBuilder<CharactersBloc, CharactersState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => Container(),
                    loadInProgress: (_) => Expanded(
                        child:
                            const Center(child: CircularProgressIndicator())),
                    loadSuccess: (state) => CharactersGrid(state.characters),
                    loadFailure: (failure) =>
                        const Center(child: Text('Characters load failure')),
                    deleteFailure: (failure) =>
                        const Center(child: Text('Characters delete failure')),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
