// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../character_list/character_list_page.dart' as _i7;
import '../onboarding/first_page.dart' as _i4;
import '../onboarding/second_page.dart' as _i5;
import '../onboarding/third_page.dart' as _i6;
import '../splash/splash_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashPage();
        }),
    FirstPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.FirstPage();
        }),
    SecondPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.SecondPage();
        }),
    ThirdPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.ThirdPage();
        }),
    CharacterListPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.CharacterListPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(FirstPageRoute.name, path: '/first-page'),
        _i1.RouteConfig(SecondPageRoute.name, path: '/second-page'),
        _i1.RouteConfig(ThirdPageRoute.name, path: '/third-page'),
        _i1.RouteConfig(CharacterListPageRoute.name,
            path: '/character-list-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class FirstPageRoute extends _i1.PageRouteInfo {
  const FirstPageRoute() : super(name, path: '/first-page');

  static const String name = 'FirstPageRoute';
}

class SecondPageRoute extends _i1.PageRouteInfo {
  const SecondPageRoute() : super(name, path: '/second-page');

  static const String name = 'SecondPageRoute';
}

class ThirdPageRoute extends _i1.PageRouteInfo {
  const ThirdPageRoute() : super(name, path: '/third-page');

  static const String name = 'ThirdPageRoute';
}

class CharacterListPageRoute extends _i1.PageRouteInfo {
  const CharacterListPageRoute() : super(name, path: '/character-list-page');

  static const String name = 'CharacterListPageRoute';
}
