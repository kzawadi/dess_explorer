part of 'bot_nav_bar_bloc.dart';

@freezed
class BotNavBarState with _$BotNavBarState {
  const factory BotNavBarState({
    required NavigationRoutes previus,
    required int selectedIndex,
  }) = _BotNavBarState;
  factory BotNavBarState.initial() => const BotNavBarState(
        previus: NavigationRoutes.homeScreen,
        selectedIndex: 0,
      );
}
