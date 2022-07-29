// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:at_utils/at_utils.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:bloc/bloc.dart';
import 'package:dess_explorer/injections.dart';
import 'package:dess_explorer/shared/at_constants.dart';
import 'package:dess_explorer/shared/images.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:window_manager/window_manager.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await windowManager.ensureInitialized();

      // Transparency compatibility for windows & linux
      if (!(Platform.isMacOS || Platform.isLinux)) {
        await Window.initialize();
        await Window.setEffect(
          effect: WindowEffect.acrylic,
        );
      }

      if (!(Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
        //print('Dess Explorer is not supported on your platform');
        exit(0);
      }

      /// Load the environment variables from the .env file.
      /// Directly calls load from the dotenv package.
      await AtConstants.load();
      AllImages();
      configureInjection(Environment.prod);
      AtSignLogger.root_level = 'all';

      await BlocOverrides.runZoned(
        () async {
          await SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
          ]).then(
            (value) async {
              await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge)
                  .then((value) {});
              return runApp(ProviderScope(child: await builder()));
            },
          );
        },
        blocObserver: AppBlocObserver(),
      );

      const initialSize = Size(850, 500);
      await windowManager.setMinimumSize(initialSize);
      await windowManager.setSize(initialSize);
      if (!Platform.isMacOS) await windowManager.setAsFrameless();

      doWhenWindowReady(() {
        appWindow.minSize = initialSize;
        appWindow.size = initialSize;
        appWindow.alignment = Alignment.center;
        appWindow.show();
      });
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
