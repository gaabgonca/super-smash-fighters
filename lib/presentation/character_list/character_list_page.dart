import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:super_smash_fighters/application/characters/characters_bloc.dart';
import 'package:super_smash_fighters/application/filters/bloc/filters_bloc.dart';
import 'package:super_smash_fighters/application/universe_filter/bloc/universefilter_bloc.dart';
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
import 'package:super_smash_fighters/presentation/routes/router.gr.dart';

@injectable
class CharacterListPage extends StatelessWidget {
  const CharacterListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersBloc, CharactersState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Fighters',
                style: TextStyle(color: Colors.black, fontSize: 27),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              actions: [
                IconButton(
                  icon: Icon(Icons.filter_list),
                  color: (state.maybeMap(
                      orElse: () => Colors.black,
                      loadSuccess: (state) =>
                          state.hasFilter ? kMainFuchsia : Colors.black)),
                  onPressed: () =>
                      AutoRouter.of(context).push(FiltersPageRoute()),
                )
              ]),
          body: Container(
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
                MultiBlocListener(
                  listeners: [
                    BlocListener<UniversefilterBloc, UniversefilterState>(
                      listener: (context, state) {
                        // print(state.universe == UniverseDomain.empty());
                        context.read<CharactersBloc>().add(
                            CharactersEvent.watchUniverseStarted(
                                state.universe));
                      },
                    ),
                    BlocListener<FiltersBloc, FiltersState>(
                      listener: (context, state) {
                        if (state != null) {
                          context.read<CharactersBloc>().add(
                              CharactersEvent.watchUniverseStarted(
                                  UniverseDomain.empty(),
                                  filtersState: state));
                        }
                      },
                    ),
                  ],
                  child: BlocBuilder<CharactersBloc, CharactersState>(
                    builder: (context, state) {
                      return state.map(
                        initial: (_) => Container(),
                        loadInProgress: (_) => Expanded(
                            child: const Center(
                                child: CircularProgressIndicator())),
                        loadSuccess: (state) =>
                            CharactersGrid(state.characters, state.hasFilter),
                        loadFailure: (failure) => const Center(
                            child: Text('Characters load failure')),
                        deleteFailure: (failure) => const Center(
                            child: Text('Characters delete failure')),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
