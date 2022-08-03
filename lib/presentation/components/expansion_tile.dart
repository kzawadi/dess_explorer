import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GroupTile extends HookWidget {
  /// Constructor
  const GroupTile({
    required this.title,
    Key? key,
    this.leading,
    this.trailing,
    this.subtitle,
    this.border = false,
    this.children = const [],
  }) : super(key: key);

  /// Title widget
  final Widget title;

  /// Leading widget
  final Widget? leading;

  /// Trailing widget
  final Widget? trailing;
  final Widget? subtitle;

  /// If shows border
  final bool border;

  /// Children
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);

    return AnimatedContainer(
      padding: const EdgeInsets.all(10),
      duration: const Duration(milliseconds: 250),
      margin: isExpanded.value
          ? const EdgeInsets.fromLTRB(0, 10, 0, 10)
          : EdgeInsets.zero,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        child: ExpansionTile(
          childrenPadding: const EdgeInsets.all(8),
          title: title,
          subtitle: subtitle,
          leading: leading,
          trailing: trailing,
          tilePadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          backgroundColor: Colors.white12,
          onExpansionChanged: (expanded) {
            isExpanded.value = expanded;
          },
          children: children,
        ),
      ),
    );
  }
}
