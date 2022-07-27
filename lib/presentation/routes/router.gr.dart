// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../at_platform/widgets/json_viewer_widget.dart' as _i5;
import '../home/app_shell.dart' as _i3;
import '../home/home_page.dart' as _i2;
import '../on_boarding/on_boarding_page.dart' as _i1;
import '../settings/setting_page.dart' as _i4;

class Router extends _i6.RootStackRouter {
  Router([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    OnBoardingPageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.OnBoardingPage());
    },
    HomePageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    AppShellRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.AppShell());
    },
    SettingPageRoute.name: (routeData) {
      final args = routeData.argsAs<SettingPageRouteArgs>(
          orElse: () => const SettingPageRouteArgs());
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i4.SettingPage(section: args.section, key: args.key));
    },
    JsonViewerWidgetRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.JsonViewerWidget());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(OnBoardingPageRoute.name, path: '/'),
        _i6.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i6.RouteConfig(AppShellRoute.name, path: '/app-shell'),
        _i6.RouteConfig(SettingPageRoute.name, path: '/setting-page'),
        _i6.RouteConfig(JsonViewerWidgetRoute.name, path: '/json-viewer-widget')
      ];
}

/// generated route for
/// [_i1.OnBoardingPage]
class OnBoardingPageRoute extends _i6.PageRouteInfo<void> {
  const OnBoardingPageRoute() : super(OnBoardingPageRoute.name, path: '/');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i6.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.AppShell]
class AppShellRoute extends _i6.PageRouteInfo<void> {
  const AppShellRoute() : super(AppShellRoute.name, path: '/app-shell');

  static const String name = 'AppShellRoute';
}

/// generated route for
/// [_i4.SettingPage]
class SettingPageRoute extends _i6.PageRouteInfo<SettingPageRouteArgs> {
  SettingPageRoute(
      {_i4.NavSection section = _i4.NavSection.general, _i7.Key? key})
      : super(SettingPageRoute.name,
            path: '/setting-page',
            args: SettingPageRouteArgs(section: section, key: key));

  static const String name = 'SettingPageRoute';
}

class SettingPageRouteArgs {
  const SettingPageRouteArgs({this.section = _i4.NavSection.general, this.key});

  final _i4.NavSection section;

  final _i7.Key? key;

  @override
  String toString() {
    return 'SettingPageRouteArgs{section: $section, key: $key}';
  }
}

/// generated route for
/// [_i5.JsonViewerWidget]
class JsonViewerWidgetRoute extends _i6.PageRouteInfo<void> {
  const JsonViewerWidgetRoute()
      : super(JsonViewerWidgetRoute.name, path: '/json-viewer-widget');

  static const String name = 'JsonViewerWidgetRoute';
}
