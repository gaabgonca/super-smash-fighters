import 'package:flutter/material.dart';
import 'package:super_smash_fighters/domain/core/universe.dart';
import 'package:super_smash_fighters/infrastructure/universes/universe_dto.dart';
import 'package:super_smash_fighters/presentation/core/colors.dart';
import 'package:super_smash_fighters/presentation/core/build_context_x.dart';

class UniversesList extends StatelessWidget {
  final List<UniverseDomain> universes;
  final int selectedIndex = 0;
  const UniversesList({Key? key, required this.universes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  child: UniverseButton(
                    universe: universe,
                    selected: selectedIndex == index,
                    onPressed: () {
                      print(index);
                    },
                  ));
            }),
      ),
    );
  }
}

class UniverseButton extends StatelessWidget {
  final UniverseDomain universe;
  final bool selected;
  final Function onPressed;
  const UniverseButton(
      {Key? key,
      required this.universe,
      required this.selected,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(
        universe.name,
        style: TextStyle(
          color: selected ? Colors.white : kMainFuchsia,
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
      onPressed: () => this.onPressed(),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.all<Color>(
            selected ? kMainFuchsia : Colors.white),
        fixedSize: MaterialStateProperty.all<Size>(Size(125, 39)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        overlayColor:
            MaterialStateProperty.all<Color>(kMainFuchsia.withAlpha(128)),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(
            color: kMainFuchsia,
          ),
        ),
      ),
    );
  }
}
