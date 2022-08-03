import 'package:dess_explorer/application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart';
import 'package:dess_explorer/domain/core/enums.dart';
import 'package:dess_explorer/injections.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Navigation intent
class NavigationIntent extends Intent {
  /// Constructor
  const NavigationIntent({
    required this.route,
  });

  /// Navigation route
  final NavigationRoutes route;
}

/// Shorcut manager
class ShortcutManager extends StatelessWidget {
  /// Constructor
  const ShortcutManager({
    Key? key,
    required this.child,
    required this.focusNode,
  }) : super(key: key);

  /// Child
  final Widget child;
  final FocusNode focusNode;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BotNavBarBloc, BotNavBarState>(
      bloc: getIt<BotNavBarBloc>(),
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return FocusableActionDetector(
          autofocus: true,
          shortcuts: <LogicalKeySet, Intent>{
            LogicalKeySet(
              LogicalKeyboardKey.metaLeft,
              LogicalKeyboardKey.digit1,
            ): const NavigationIntent(route: NavigationRoutes.homeScreen),
            LogicalKeySet(
              LogicalKeyboardKey.metaLeft,
              LogicalKeyboardKey.digit2,
            ): const NavigationIntent(route: NavigationRoutes.projectsScreen),
            LogicalKeySet(
              LogicalKeyboardKey.metaLeft,
              LogicalKeyboardKey.digit3,
            ): const NavigationIntent(route: NavigationRoutes.exploreScreen),
            LogicalKeySet(
              LogicalKeyboardKey.metaLeft,
              LogicalKeyboardKey.keyF,
            ): const NavigationIntent(route: NavigationRoutes.searchScreen),
          },
          actions: <Type, Action<Intent>>{
            NavigationIntent: CallbackAction<NavigationIntent>(
              onInvoke: (intent) => context.read<BotNavBarBloc>()
                ..add(BotNavBarEvent.goTo(intent.route)),
            ),
          },
          child: child,
        );
      },
    );
  }
}
