import 'package:flutter/material.dart';
import 'package:super_smash_fighters/presentation/core/blend_mask.dart';
import 'package:super_smash_fighters/presentation/core/colors.dart';

class FirstOnboardingPage extends StatelessWidget {
  const FirstOnboardingPage({Key? key}) : super(key: key);

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
                  colors: [kDarkFuchsia, kDarkBlue],
                  stops: [0.0941, 0.8289],
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
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.274,
            right: 0,
            left: 0,
            child: Text(
              'Access our\nExtended Catalog',
              style: TextStyle(fontSize: 36, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.123,
              right: 0,
              left: 0,
              child: TextButton(
                child: Text('Next'),
                onPressed: () {},
              )),
        ],
      ),
    );
  }
}
