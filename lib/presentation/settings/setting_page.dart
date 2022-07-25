import 'package:auto_route/auto_route.dart';
import 'package:dess_explorer/presentation/components/theme.dart';
import 'package:dess_explorer/presentation/home/widgets/screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// class SettingPage extends StatelessWidget {
//   const SettingPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DessScreen(
//       title: 'Setting',
//       actions: [],
//       child: Container(
//         color: platformBackgroundColor(context),
//         child: const Text('Settings'),
//       ),
//     );
//   }
// }

/// TODO: Unify the nav sections information
/// Nav sections
enum NavSection {
  /// General
  general,

  /// FVM
  fvm,

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
    // final provider = useProvider(settingsProvider.notifier);
    // final settings = useProvider(settingsProvider);

    // final currentSection = useState(section.index);

    // final controller = usePageController(initialPage: section.index);

    final List<String> _sections = ['general', 'FVM', 'Flutter'];
    // _sections.m

    // void changeSection(int idx) {
    //   currentSection.value = idx;
    //   controller.jumpToPage(idx);
    // }

    // Future<void> handleSave() async {
    //   final savedMessage =
    //       context.i18n('modules:settings.settingsHaveBeenSaved');
    //   final errorMessage =
    //       context.i18n('modules:settings.couldNotSaveSettings');
    //   try {
    //     await provider.save(settings);
    //     notify(savedMessage);
    //   } on Exception catch (e) {
    //     notifyError(errorMessage);
    //     notifyError(e.toString());
    //   }
    // }

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
                      // selected: currentSection.value == idx,
                      // onTap: () => changeSection(idx),
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
              children: [
                // SettingsSectionGeneral(settings, handleSave),
                // FvmSettingsScene(settings, handleSave),
                // SettingsSectionFlutter(settings, handleSave),
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
