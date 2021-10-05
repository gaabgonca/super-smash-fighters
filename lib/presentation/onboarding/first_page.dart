import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:super_smash_fighters/presentation/onboarding/onboarding_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/second_page.dart';
import 'package:super_smash_fighters/presentation/routes/router.gr.dart';

class FirstPage extends OnBoardingPage {
  FirstPage()
      : super(
            pathToImageAsset: 'assets/img/link_sprite.png',
            buttonOnPressed: (context) {
              AutoRouter.of(context).replace(const SecondPageRoute());
            },
            mainText: 'Access our\nExtended Catalog',
            buttonText: 'Next');
}
