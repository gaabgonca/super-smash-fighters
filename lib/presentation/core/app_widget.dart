import 'package:flutter/material.dart';
import 'package:super_smash_fighters/presentation/onboarding/first_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/onboarding_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/second_page.dart';
import 'package:super_smash_fighters/presentation/onboarding/third_page.dart';
import 'package:super_smash_fighters/presentation/splash/splash_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ThirdPage(),
    );
  }
}
