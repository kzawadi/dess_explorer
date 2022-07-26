import 'package:flutter/material.dart';

/// Generic FVM List Tile
class DessListTile extends StatelessWidget {
  /// Constructor
  const DessListTile({
    Key? key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.onTap,
    this.selected = false,
  }) : super(key: key);

  /// Title
  final Widget? title;

  /// Subitle
  final Widget? subtitle;

  /// Trailing widget
  final Widget? trailing;

  /// Leading widget
  final Widget? leading;

  /// On tap handler
  final Function()? onTap;

  /// Is it seleccted
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      subtitle: subtitle,
      leading: leading,
      title: title,
      trailing: trailing,
      selectedTileColor: Colors.white12,
      selected: selected,
      onTap: onTap,
    );
  }
}
