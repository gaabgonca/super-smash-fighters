import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:super_smash_fighters/injection.dart';
import 'package:super_smash_fighters/isar.g.dart';
import 'package:super_smash_fighters/presentation/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);

  runApp(MyApp());
}
