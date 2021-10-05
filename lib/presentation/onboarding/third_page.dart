import 'package:auto_route/auto_route.dart';
import 'package:super_smash_fighters/infrastructure/universes/universe_repository.dart';
import 'package:super_smash_fighters/injection.dart';
import 'package:super_smash_fighters/presentation/onboarding/onboarding_page.dart';
import 'package:super_smash_fighters/presentation/routes/router.gr.dart';

class ThirdPage extends OnBoardingPage {
  ThirdPage()
      : super(
            pathToImageAsset: 'assets/img/punchout_sprite.png',
            buttonOnPressed: (context) {
              AutoRouter.of(context).replace(const CharacterListPageRoute());
            },
            mainText: 'And More...',
            buttonText: 'Get Started');
}
