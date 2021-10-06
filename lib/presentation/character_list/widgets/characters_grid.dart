import 'package:flutter/material.dart';
import 'package:super_smash_fighters/domain/core/character.dart';
import 'package:super_smash_fighters/presentation/character_list/widgets/character_card.dart';
import 'package:super_smash_fighters/presentation/core/colors.dart';
import 'package:super_smash_fighters/presentation/core/build_context_x.dart';

class CharactersGrid extends StatelessWidget {
  final List<CharacterDomain> characters;
  const CharactersGrid(this.characters, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Text(
                    'Fighters (${characters.length})',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: context.widthPx * 0.1706),
                  Expanded(
                      child: Container(
                    color: kTitleLineColor,
                    height: 1,
                  )),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 14, right: 14, top: 14),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.8022,
                    crossAxisCount: 2,
                    crossAxisSpacing: 19,
                    mainAxisSpacing: 15),
                itemBuilder: (context, index) {
                  final character = characters[index];
                  return CharacterCard(character);
                },
                itemCount: characters.length,
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
