import 'package:flutter/material.dart';
import 'package:super_smash_fighters/presentation/core/blend_mask.dart';
import 'package:super_smash_fighters/presentation/core/colors.dart';
import 'package:super_smash_fighters/presentation/core/build_context_x.dart';

//TODO: fix mediaqueries
abstract class OnBoardingPage extends StatelessWidget {
  final String pathToImageAsset;
  final String mainText;
  final Function buttonOnPressed;
  final String buttonText;

  const OnBoardingPage(
      {Key? key,
      required this.pathToImageAsset,
      required this.mainText,
      required this.buttonOnPressed,
      required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _background(context),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _firstOverlay(context),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _secondOverlay(context),
          ),
          Positioned(
            top: context.heightPx * 0.0603,
            right: 0,
            left: 0,
            child: _sprite(context, pathToImageAsset),
          ),
          Positioned(
            bottom: context.heightPx * 0.274,
            right: 0,
            left: 0,
            child: _mainText(context, mainText),
          ),
          Positioned(
            bottom: context.heightPx * 0.123,
            right: 0,
            left: 0,
            child: _mainButton(context, buttonText, buttonOnPressed),
          ),
        ],
      ),
    );
  }
}

Widget _background(BuildContext context) {
  return Container(
    width: context.widthPx,
    height: context.heightPx,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [kDarkFuchsia, kDarkBlue],
          stops: [0.0941, 0.8289],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
    ),
  );
}

Widget _firstOverlay(BuildContext context) {
  return Container(
    width: context.widthPx,
    height: context.heightPx * 0.66,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [kLightestGray, kDarkGray],
          stops: [0.0955, 0.4464],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
    ),
  );
}

Widget _secondOverlay(BuildContext context) {
  return Container(
    width: context.widthPx,
    height: context.heightPx,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [kOverlayClearBlue, kOverlayDarkBlue],
          stops: [0.0175, 0.6881],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
    ),
  );
}

Widget _sprite(BuildContext context, String assetPath) {
  return BlendMask(
    blendMode: BlendMode.overlay,
    child: FittedBox(
      fit: BoxFit.fill,
      child: Image(
        color: Colors.transparent,
        colorBlendMode: BlendMode.overlay,
        alignment: Alignment.topCenter,
        image: AssetImage(assetPath),
      ),
    ),
  );
}

Widget _mainText(BuildContext context, String mainText) {
  return Text(
    mainText,
    style: TextStyle(fontSize: 36, color: Colors.white),
    textAlign: TextAlign.center,
  );
}

Widget _mainButton(
    BuildContext context, String buttonText, Function buttonOnPressed) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: context.widthPx * 0.242),
    child: ElevatedButton(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          backgroundColor: MaterialStateProperty.all<Color>(kMainFuchsia),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)))),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 13),
        child: Text(buttonText,
            style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
      onPressed: buttonOnPressed(),
    ),
  );
}
