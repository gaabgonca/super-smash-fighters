import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';
import 'package:super_smash_fighters/domain/universe_list/i_universe_repository.dart';
import 'package:super_smash_fighters/domain/universe_list/universe_failure.dart';
import 'package:super_smash_fighters/infrastructure/universes/universe_repository.dart';
import 'package:super_smash_fighters/injection.dart';

@injectable
class CharacterListPage extends StatelessWidget {
  const CharacterListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: getIt<IUniverseRepository>().watchAll(),
        builder: (BuildContext context,
            AsyncSnapshot<Either<UniverseFailure, List<UniverseDomain>>>
                snapshot) {
          if (snapshot.hasData) {
            var universes = snapshot.data;
            print(universes);
            return Center(
              child: Text('Data loaded'),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: StreamBuilder(
  //       stream: getIt<IUniverseRepository>().watchAll(),
  //       builder: (BuildContext context,
  //           AsyncSnapshot<Either<UniverseFailure, List<UniverseDomain>>>
  //               snapshot) {
  //         if (snapshot.hasData) {
  //           var universes = snapshot.data;
  //           print(universes);
  //           return Center(
  //             child: Text('Data loaded'),
  //           );
  //         } else {
  //           return Container();
  //         }
  //       },
  //     ),
  //   );
  // }