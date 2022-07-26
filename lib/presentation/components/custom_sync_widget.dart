import 'package:at_sync_ui_flutter/at_sync_ui_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSyncIndicator extends StatelessWidget {
  CustomSyncIndicator({
    this.child,
    this.size = 15,
    required this.uiStatus,
    Key? key,
  })  : assert(
          size! >= 45 || child == null,
          'Size must be greater than 45 if child is not null',
        ),
        super(key: key);
  final Widget? child;
  final AtSyncUIStatus? uiStatus;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return uiStatus == AtSyncUIStatus.syncing
        ? const CupertinoActivityIndicator()
        : const SizedBox.shrink();
  }

  Color syncColors(AtSyncUIStatus? value) =>
      value == null || value == AtSyncUIStatus.notStarted
          ? const Color.fromARGB(255, 28, 138, 33)
          : value == AtSyncUIStatus.syncing
              ? Colors.yellow[600]!
              : value == AtSyncUIStatus.completed
                  ? Colors.transparent
                  : Colors.red;
}
