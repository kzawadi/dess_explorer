// import 'package:atsign_location_app/l10n/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dess_explorer/application/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:dess_explorer/injections.dart';
import 'package:dess_explorer/l10n/l10n.dart';
import 'package:dess_explorer/presentation/components/theme.dart';
import 'package:dess_explorer/presentation/routes/router.gr.dart' as app_router;
import 'package:dess_explorer/presentation/routes/routes_observer.dart';
import 'package:dess_explorer/presentation/settings/settings.utils.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class DessApp extends StatelessWidget {
  DessApp({super.key});

  final _appRouter = app_router.Router();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<OnBoardingBloc>(
            create: (context) => getIt<OnBoardingBloc>(),
          ),
        ],
        child: MaterialApp.router(
          title: 'Dess Explorer',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          routerDelegate: AutoRouterDelegate(
            _appRouter, //todo
            navigatorObservers: () => [PrivateFitRouteObserver()],
          ),
          routeInformationParser: _appRouter.defaultRouteParser(),
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: getThemeMode('system'),
          builder: (context, router) => router!,
        ),
      ),
    );
  }
}
