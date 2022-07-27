import 'package:dess_explorer/presentation/components/blur_background.dart';
import 'package:dess_explorer/presentation/components/typography.dart';
import 'package:flutter/material.dart';

/// Generic Sidekick screen widget
class DessScreen extends StatelessWidget {
  /// Constructor
  const DessScreen({
    required this.title,
    this.actions = const [],
    this.processing = false,
    this.extendBody = true,
    required this.child,
    Key? key,
    this.titleFontSize = 10,
  }) : super(key: key);

  /// Screen title
  final String title;

  /// Screen actions
  final List<Widget> actions;

  /// Is it processing
  final bool processing;

  /// Child widget
  final Widget child;

  final double titleFontSize;

  /// Should extend body
  final bool extendBody;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: extendBody,
      extendBody: extendBody,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Stack(
          children: [
            const BlurBackground(),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 59,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Heading(title, fontSize: titleFontSize),
                      const Spacer(),
                      ...actions,
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1,
                  child: processing
                      ? const LinearProgressIndicator()
                      : Container(),
                ),
              ],
            ),
          ],
        ),
      ),
      body: child,
    );
  }
}
