import 'package:flutter/material.dart';
import 'package:super_smash_fighters/presentation/onboarding/first_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/onboarding_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/second_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/third_page.dart';
import 'package:super_smash_fighters/presentation/routes/router.gr.dart';
import 'package:super_smash_fighters/presentation/splash/splash_page.dart';

class MyApp extends StatelessWidget {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      title: 'Super Smash Catalog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}
