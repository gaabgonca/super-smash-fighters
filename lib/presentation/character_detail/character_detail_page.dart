import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:super_smash_fighters/domain/core/character.dart';
import 'package:super_smash_fighters/presentation/core/build_context_x.dart';
import 'package:super_smash_fighters/presentation/core/colors.dart';

class CharacterDetailPage extends StatelessWidget {
  final CharacterDomain character;
  const CharacterDetailPage(this.character, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            _background(),
            _titleColumn(context, character),
            _picture(context, character),
            _description(context, character)
          ],
        ));
  }
}

Widget _background() => Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage('assets/img/detail_background.png'),
      ),
    );

Widget _titleColumn(BuildContext context, CharacterDomain character) =>
    Positioned(
      left: 28,
      top: context.heightPx * 0.1034,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            character.name,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            character.universe,
            style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            character.downloads + ' downloads',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(
            height: 7,
          ),
          RatingBar(
            initialRating: character.rate * 1.0,
            maxRating: 5,
            glow: false,
            ignoreGestures: true,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemSize: 16,
            itemCount: 5,
            ratingWidget: RatingWidget(
              full: Image(
                image: AssetImage('assets/img/star.png'),
              ),
              half: Image(
                image: AssetImage('assets/img/star.png'),
              ),
              empty: Image(
                image: AssetImage('assets/img/empty_star_pink.png'),
              ),
            ),
            itemPadding: EdgeInsets.only(right: 8),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          const SizedBox(
            height: 27,
          ),
          Container(
            width: 84,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7), color: Colors.white),
            child: Center(
              child: Text(
                '\$${character.price}',
                style: TextStyle(
                    color: kMainFuchsia,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );

Widget _picture(BuildContext context, CharacterDomain character) => Positioned(
      right: 0,
      left: context.widthPx * 0.4187,
      top: context.heightPx * 0.1687,
      child: CachedNetworkImage(
        imageUrl: character.imageURL,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );

Widget _description(BuildContext context, CharacterDomain character) =>
    Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: SizedBox(
          height: context.heightPx * 0.48,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                character.description,
                style: TextStyle(fontSize: 14, height: 1.9286),
              ),
            ),
          ),
        ));
