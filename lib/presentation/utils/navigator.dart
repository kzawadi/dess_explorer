import 'package:hooks_riverpod/hooks_riverpod.dart';

enum NavigationRoutes {
  homeScreen,
  projectsScreen,
  exploreScreen,
  settingsScreen,
  searchScreen,
}

final navigationProvider =
    StateNotifierProvider<NavigationProvider, NavigationRoutes>((_) {
  return NavigationProvider();
});

class NavigationProvider extends StateNotifier<NavigationRoutes> {
  NavigationProvider({
    NavigationRoutes route = NavigationRoutes.homeScreen,
  })  : previous = route,
        super(route);
  NavigationRoutes previous;

  void goTo(NavigationRoutes navigation) {
    // Sets prev index for goBack method
    previous = state;
    state = navigation;
  }

  void goBack() {
    if (previous != state) {
      goTo(previous);
    }
  }
}
