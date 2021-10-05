import 'package:flutter/material.dart';
import 'package:super_smash_fighters/presentation/onboarding/onboarding_page.dart';

class FirstPage extends OnBoardingPage {
  FirstPage()
      : super(
            pathToImageAsset: 'assets/img/link_sprite.png',
            buttonOnPressed: () {},
            mainText: 'Access our\nExtended Catalog',
            buttonText: 'Next');
}
