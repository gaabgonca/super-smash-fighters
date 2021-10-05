import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:http/http.dart' as http;
import 'package:super_smash_fighters/isar.g.dart';

@module
abstract class IsarInjectableModule {
  @lazySingleton
  Future<Isar> get isar => openIsar();
  @lazySingleton
  http.Client get httpClient => http.Client();
}
