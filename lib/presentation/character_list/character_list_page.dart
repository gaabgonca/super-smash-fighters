import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:super_smash_fighters/application/bloc/universes_bloc.dart';
import 'package:super_smash_fighters/domain/character_list/character_failure.dart';
import 'package:super_smash_fighters/domain/character_list/i_character_repository.dart';
import 'package:super_smash_fighters/domain/core/character.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';
import 'package:super_smash_fighters/domain/universe_list/i_universe_repository.dart';
import 'package:super_smash_fighters/domain/universe_list/universe_failure.dart';
import 'package:super_smash_fighters/infrastructure/universes/universe_repository.dart';
import 'package:super_smash_fighters/injection.dart';
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
        ],
        child: BlocBuilder<UniversesBloc, UniversesState>(
            builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) => UniversesList(universes: state.universes),
            loadFailure: (failure) =>
                const Center(child: Text('Universe load failure')),
            deleteFailure: (failure) =>
                const Center(child: Text('Universe delete failure')),
          );
        }),
      ),
    );
  }
}

Widget _universesList(List<UniverseDomain> universes, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: SizedBox(
      height: 48,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: universes.length,
          itemBuilder: (contetx, index) {
            final universe = universes[index];
            return Container(
              width: context.widthPx * 0.3333,
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: OutlinedButton(
                child: Text(
                  universe.name,
                  style: TextStyle(
                    color: kMainFuchsia,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  print(universe.id);
                },
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(0),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  fixedSize: MaterialStateProperty.all<Size>(Size(125, 39)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  overlayColor: MaterialStateProperty.all<Color>(
                      kMainFuchsia.withAlpha(128)),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(
                      color: kMainFuchsia,
                    ),
                  ),
                ),
              ),
            );
          }),
    ),
  );
}
