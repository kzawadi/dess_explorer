import 'package:dess_explorer/presentation/components/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Flutter settings section
class SettingsSectionFlutter extends HookWidget {
  /// Constructor
  const SettingsSectionFlutter({
    Key? key,
  }) : super(key: key);

  /// Settings

  /// On save handler

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: CupertinoScrollbar(
        child: ListView(
          children: [
            Text('General Settings',
                style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // TODO: Move this into a separate component
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange.withOpacity(0.1),
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: 0.5,
                    ),
                  ),
                  child: const Text(
                    'At Platform settings for an Atsign',
                  ),
                ),
                const SizedBox(height: 20)
              ],
            ),
            const SizedBox(height: 90),
            // const Subheading(
            //   'At Signs',
            // ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text(
                'Reset to Default ',
              ),
              trailing: OutlinedButton(
                onPressed: () {},
                child: const Text('reset'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
