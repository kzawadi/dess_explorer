// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../home/app_shell.dart' as _i3;
import '../home/home_page.dart' as _i2;
import '../on_boarding/on_boarding_page.dart' as _i1;

class Router extends _i4.RootStackRouter {
  Router([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    OnBoardingPageRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.OnBoardingPage());
    },
    HomePageRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    AppShellRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.AppShell());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i4.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i4.RouteConfig(AppShellRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.OnBoardingPage]
class OnBoardingPageRoute extends _i4.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(OnBoardingPageRoute.name, path: '/on-boarding-page');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i4.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.AppShell]
class AppShellRoute extends _i4.PageRouteInfo<void> {
  const AppShellRoute() : super(AppShellRoute.name, path: '/');

  static const String name = 'AppShellRoute';
}
