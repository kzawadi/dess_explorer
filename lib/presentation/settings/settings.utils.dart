// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SettingsThemeMode {
  const SettingsThemeMode();
  static const light = 'light';
  static const dark = 'dark';
  static const system = 'system';
}

ThemeMode getThemeMode(String themeMode) {
  if (themeMode == SettingsThemeMode.light) {
    return ThemeMode.light;
  } else if (themeMode == SettingsThemeMode.dark) {
    return ThemeMode.dark;
  } else {
    return ThemeMode.system;
  }
}

typedef LaunchFunction = Future<void> Function(
  BuildContext context,
  String projectPath, {
  String? customLocation,
});

enum SupportedIDE {
  VSCode,
  XCode,
  Custom,
}

class IDE {
  IDE(
    SupportedIDE ideName,
    this.icon,
    this.launch,
  ) : name = ideName.name;
  final String name;
  final LaunchFunction launch;
  final Widget icon;
}
