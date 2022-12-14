import 'dart:io';

import 'package:animations/animations.dart';
import 'package:dess_explorer/application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart';
import 'package:dess_explorer/domain/core/enums.dart';
import 'package:dess_explorer/presentation/at_platform/at_platform_page.dart';
import 'package:dess_explorer/presentation/at_platform/widgets/preference_viewer.dart';
import 'package:dess_explorer/presentation/components/constants.dart';
import 'package:dess_explorer/presentation/components/theme.dart';
import 'package:dess_explorer/presentation/components/top_app_bar.dart';
import 'package:dess_explorer/presentation/home/home_page.dart';
import 'package:dess_explorer/presentation/utils/indexed_transition_switcher.dart';
import 'package:dess_explorer/presentation/utils/layout_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:dess_explorer/presentation/components/organism/shortcut_manager.dart'
    as sm;

final _scaffoldKey = GlobalKey<ScaffoldState>();

const pages = <Widget>[
  AtPlatfromPage(),
  PreferencesScreenScene(),
  HomePage(),
];

/// Main widget of the app
class AppShell extends HookWidget {
  /// Constructor
  const AppShell({
    Key? key,
  }) : super(key: key);

  NavigationRailDestination renderNavButton(
    BuildContext context,
    String label,
    IconData iconData,
  ) {
    return NavigationRailDestination(
      icon: Icon(iconData, size: 20),
      selectedIcon: Icon(
        iconData,
        size: 20,
        color: Theme.of(context).colorScheme.secondary,
      ),
      label: Text(label),
    );
  }

  @override
  Widget build(BuildContext context) {
    LayoutSize.init(context);
    final focusNode = useFocusNode();
    return BlocBuilder<BotNavBarBloc, BotNavBarState>(
      builder: (context, state) {
        return sm.ShortcutManager(
          focusNode: focusNode,
          child: Scaffold(
            appBar: const DessAppBar(),
            backgroundColor: platformBackgroundColor(context),
            key: _scaffoldKey,
            body: Row(
              children: [
                navigationRailWidget(context, state),
                if (!Platform.isWindows)
                  const VerticalDivider(
                    thickness: 1,
                    width: 1,
                  ),
                contentWidget(context, state),
              ],
            ),
          ),
        );
      },
    );
  }

  Expanded contentWidget(BuildContext context, BotNavBarState state) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: Platform.isWindows
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(12),
                    )
                  : null,
              border: Platform.isWindows
                  ? Border.all(
                      color: Theme.of(context).dividerColor,
                    )
                  : null,
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: ClipRRect(
              // This is the main content.
              borderRadius: Platform.isWindows
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(12),
                    )
                  : BorderRadius.zero,
              child: IndexedTransitionSwitcher(
                // Need to update IndexTransitionSwitcher on theme change
                key: Key(Theme.of(context).brightness.toString()),
                duration: const Duration(milliseconds: 250),
                reverse: state.selectedIndex < (state.previus.index),
                transitionBuilder: (
                  child,
                  animation,
                  secondaryAnimation,
                ) {
                  return SharedAxisTransition(
                    fillColor: Theme.of(context).brightness == Brightness.light
                        ? lightTheme.scaffoldBackgroundColor
                        : darkTheme.scaffoldBackgroundColor,
                    animation: animation,
                    secondaryAnimation: secondaryAnimation,
                    transitionType: SharedAxisTransitionType.vertical,
                    child: child,
                  );
                },
                index: state.selectedIndex,
                children: pages,
              ),
            ),
          ),
        ],
      ),
    );
  }

  NavigationRail navigationRailWidget(
    BuildContext context,
    BotNavBarState state,
  ) {
    return NavigationRail(
      backgroundColor: platformBackgroundColor(context),
      selectedIndex: state.selectedIndex,
      minWidth: kNavigationWidth,
      minExtendedWidth: kNavigationWidthExtended,
      extended: !LayoutSize.isSmall,
      onDestinationSelected: (index) {
        context.read<BotNavBarBloc>().add(
              BotNavBarEvent.goTo(NavigationRoutes.values[index]),
            );
      },
      destinations: [
        renderNavButton(
          context,
          'Dashboard',
          Icons.category,
        ),
        renderNavButton(
          context,
          'AtPlatform',
          MdiIcons.folderMultiple,
        ),
        renderNavButton(
          context,
          'Explore',
          Icons.explore,
        ),
      ],
    );
  }
}
