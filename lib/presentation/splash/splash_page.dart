import 'package:flutter/material.dart';
import 'package:super_smash_fighters/presentation/core/blend_mask.dart';
import 'package:super_smash_fighters/presentation/core/colors.dart';
import 'package:super_smash_fighters/presentation/core/build_context_x.dart';

//TODO: fix mediaqueries

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [kLightOrange, kMainFuchsia],
                  stops: [0.0778, 0.8246],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.24,
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
  }
}
