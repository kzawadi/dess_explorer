import 'package:auto_route/auto_route.dart';
import 'package:dess_explorer/presentation/settings/widgets/setting_general_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

/// Nav sections
enum NavSection {
  /// General
  general,

  /// AtPlatform
  atPlatform,

  /// Flutter
  flutter,
}

const List<IconData> _sectionIcons = [
  MdiIcons.tune,
  MdiIcons.layers,
  MdiIcons.console,
];

/// Settings screen
class SettingPage extends StatelessWidget {
  const SettingPage({
    this.section = NavSection.general,
    Key? key,
  }) : super(key: key);

  /// Current nav section
  final NavSection section;
  @override
  Widget build(BuildContext context) {
    final List<String> _sections = ['general', 'AtPlatform', 'Flutter'];

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          CloseButton(
            key: key,
            onPressed: () => AutoRouter.of(context).pop(),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Row(
        children: [
          const SizedBox(width: 50),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListView(
                children: _sections.mapIndexed(
                  (section, idx) {
                    return ListTile(
                      leading: Icon(
                        _sectionIcons[idx],
                        size: 20,
                      ),
                      title: Text(
                        section,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      selectedTileColor: Theme.of(context).hoverColor,
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          const SizedBox(width: 60),
          Expanded(
            flex: 3,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              // controller: controller,
              children: const [
                SettingsSectionFlutter(),
              ],
            ),
          ),
          const SizedBox(width: 50),
        ],
      ),
    );
  }
}

/// Iterable extension
extension ExtendedIterable<E> on Iterable<E> {
  /// Like Iterable<T>.map but callback have index as second argument
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }

  /// For each with index
  void forEachIndexed(void Function(E e, int i) f) {
    var i = 0;
    forEach((e) => f(e, i++));
  }
}
