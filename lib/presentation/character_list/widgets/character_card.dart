import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:super_smash_fighters/domain/core/character.dart';
import 'package:super_smash_fighters/presentation/core/colors.dart';

class CharacterCard extends StatelessWidget {
  final CharacterDomain character;
  const CharacterCard(this.character, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: kPictureBackgroundColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: kPictureBorderGray, width: 1),
            ),
            child: Transform.scale(
              scale: 0.8,
              child: CachedNetworkImage(
                imageUrl: character.imageURL,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
        ),
        SizedBox(height: 14),
        Text(
          character.name.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        ),
        Text(
          character.universe.toUpperCase(),
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }
}
