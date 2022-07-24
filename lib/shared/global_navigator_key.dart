import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class NavService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
