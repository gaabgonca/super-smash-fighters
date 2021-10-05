import 'package:auto_route/auto_route.dart';
import 'package:super_smash_fighters/presentation/onboarding/onboarding_page.dart';
import 'package:super_smash_fighters/presentation/routes/router.gr.dart';

class SecondPage extends OnBoardingPage {
  SecondPage()
      : super(
            pathToImageAsset: 'assets/img/charizard_sprite.png',
            buttonOnPressed: (context) {
              AutoRouter.of(context).replace(const ThirdPageRoute());
            },
            mainText: 'Filter Universes',
            buttonText: 'Next');
}
