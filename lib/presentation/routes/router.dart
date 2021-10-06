import 'package:auto_route/auto_route.dart';
import 'package:super_smash_fighters/presentation/character_detail/character_detail_page.dart';
import 'package:super_smash_fighters/presentation/character_list/character_list_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/first_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/second_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/third_page.dart';
import 'package:super_smash_fighters/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: FirstPage),
    AutoRoute(page: SecondPage),
    AutoRoute(page: ThirdPage),
    AutoRoute(page: CharacterListPage),
    AutoRoute(page: CharacterDetailPage)
  ],
)
class $AppRouter {}
