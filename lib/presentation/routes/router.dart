import 'package:auto_route/annotations.dart';
import 'package:dess_explorer/presentation/at_platform/widgets/json_viewer_widget.dart';
import 'package:dess_explorer/presentation/home/app_shell.dart';
import 'package:dess_explorer/presentation/home/home_page.dart';
import 'package:dess_explorer/presentation/on_boarding/on_boarding_page.dart';
import 'package:dess_explorer/presentation/settings/setting_page.dart';
import 'package:injectable/injectable.dart';

/*
Using Auto route helps a lot in  navigation it allows for strongly-typed
arguments passing , effortless deep-linking and it uses code generation to
simplify routes setup

This will eliminated the boilerplate and a need to to use named/generated
routes and you’ll end up writing a lot of boilerplate code for mediator argument
classes, checking for required arguments, extracting arguments and a bunch of 
other stuff. AutoRoute does all that for you and much more.
*/
@singleton
@CupertinoAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<dynamic>(page: OnBoardingPage, initial: true),
    AutoRoute<dynamic>(page: HomePage),
    AutoRoute<dynamic>(page: AppShell),
    AutoRoute<dynamic>(page: SettingPage),
    AutoRoute<dynamic>(page: JsonViewerWidget),
  ],
)
class $Router {}
