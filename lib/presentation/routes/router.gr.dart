// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../home/app_shell.dart' as _i3;
import '../home/home_page.dart' as _i2;
import '../on_boarding/on_boarding_page.dart' as _i1;
import '../settings/setting_page.dart' as _i4;

class Router extends _i5.RootStackRouter {
  Router([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    OnBoardingPageRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.OnBoardingPage());
    },
    HomePageRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    AppShellRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.AppShell());
    },
    SettingPageRoute.name: (routeData) {
      final args = routeData.argsAs<SettingPageRouteArgs>(
          orElse: () => const SettingPageRouteArgs());
      return _i5.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i4.SettingPage(section: args.section, key: args.key));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(OnBoardingPageRoute.name, path: '/'),
        _i5.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i5.RouteConfig(AppShellRoute.name, path: '/app-shell'),
        _i5.RouteConfig(SettingPageRoute.name, path: '/setting-page')
      ];
}

/// generated route for
/// [_i1.OnBoardingPage]
class OnBoardingPageRoute extends _i5.PageRouteInfo<void> {
  const OnBoardingPageRoute() : super(OnBoardingPageRoute.name, path: '/');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.AppShell]
class AppShellRoute extends _i5.PageRouteInfo<void> {
  const AppShellRoute() : super(AppShellRoute.name, path: '/app-shell');

  static const String name = 'AppShellRoute';
}

/// generated route for
/// [_i4.SettingPage]
class SettingPageRoute extends _i5.PageRouteInfo<SettingPageRouteArgs> {
  SettingPageRoute(
      {_i4.NavSection section = _i4.NavSection.general, _i6.Key? key})
      : super(SettingPageRoute.name,
            path: '/setting-page',
            args: SettingPageRouteArgs(section: section, key: key));

  static const String name = 'SettingPageRoute';
}

class SettingPageRouteArgs {
  const SettingPageRouteArgs({this.section = _i4.NavSection.general, this.key});

  final _i4.NavSection section;

  final _i6.Key? key;

  @override
  String toString() {
    return 'SettingPageRouteArgs{section: $section, key: $key}';
  }
}
