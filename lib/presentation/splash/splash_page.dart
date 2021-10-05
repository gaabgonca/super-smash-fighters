import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:super_smash_fighters/presentation/core/blend_mask.dart';
import 'package:super_smash_fighters/presentation/core/colors.dart';
import 'package:super_smash_fighters/presentation/core/build_context_x.dart';
import 'package:super_smash_fighters/presentation/routes/router.gr.dart';

//TODO: fix mediaqueries

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _shouldShowOnboarding(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!) {
            AutoRouter.of(context).replace(const FirstPageRoute());
          } else {
            AutoRouter.of(context).replace(const CharacterListPageRoute());
          }
        }
        return Scaffold(
          body: Stack(
            children: [
              Container(
                width: context.widthPx,
                height: context.heightPx,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [kLightOrange, kMainFuchsia],
                      stops: [0.0778, 0.8246],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
              ),
              Positioned(
                top: context.heightPx * 0.24,
                right: 0,
                left: 0,
                child: BlendMask(
                  blendMode: BlendMode.overlay,
                  child: Image(
                    color: Colors.transparent,
                    colorBlendMode: BlendMode.overlay,
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/img/smash_logo.png'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

Future<bool> _shouldShowOnboarding() async {
  await Future.delayed(Duration(seconds: 2), () {});
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool firstTime = prefs.get('firstTime') as bool? ?? true;
  prefs.setBool('firstTime', false);
  return firstTime;
}
