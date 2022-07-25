import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:dess_explorer/presentation/components/theme.dart';
import 'package:dess_explorer/presentation/components/typography.dart';
import 'package:dess_explorer/presentation/components/windows_boader.dart';
import 'package:dess_explorer/presentation/routes/router.gr.dart';
import 'package:dess_explorer/presentation/settings/setting_page.dart';
import 'package:flutter/material.dart';

/// Dess Explorer top app bar
class DessAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Constructor
  const DessAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(45);

  @override
  Widget build(BuildContext context) {
    // Opens setting modal
    void openSettingsScreen() {
      Navigator.push<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
          builder: (context) => const SettingPage(),
        ),
      );
    }

    Widget renderTitle() {
      if (!Platform.isMacOS) {
        return Row(
          children: const [
            SizedBox(width: 10),
            Caption('Dess Explorer'),
          ],
        );
      }
      return const Caption('Dess Explorer');
    }

    return AppBar(
      backgroundColor: platformBackgroundColor(context),
      title: renderTitle(),
      centerTitle: Platform.isWindows ? false : true,
      titleSpacing: 0,
      leading: Platform.isMacOS ? const WindowButtons() : null,
      actions: [
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Caption('0.0.1'),
          ],
        ),
        const SizedBox(width: 10),
        // IconButton(
        //   icon: const Icon(Icons.search),
        //   iconSize: 20,
        //   splashRadius: 15,
        //   onPressed: openSearchModal,
        // ),
        IconButton(
            icon: const Icon(Icons.settings),
            iconSize: 20,
            splashRadius: 15,
            onPressed: openSettingsScreen),
        const SizedBox(width: 10),
        if (!Platform.isMacOS) const WindowButtons(),
      ],
      bottom: !Platform.isWindows
          ? const PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Divider(
                height: 0,
                thickness: 0.5,
              ),
            )
          : null,
      automaticallyImplyLeading: false,
      // shadowColor: Colors.transparent,
      // backgroundColor: Colors.transparent,
      flexibleSpace: MoveWindow(),
    );
  }
}
