import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dess_explorer/domain/core/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bot_nav_bar_event.dart';
part 'bot_nav_bar_state.dart';
part 'bot_nav_bar_bloc.freezed.dart';

@lazySingleton
class BotNavBarBloc extends Bloc<BotNavBarEvent, BotNavBarState> {
  BotNavBarBloc() : super(BotNavBarState.initial()) {
    on<BotNavBarEvent>(_navHandler);
  }

  FutureOr<void> _navHandler(
    BotNavBarEvent event,
    Emitter<BotNavBarState> emit,
  ) async {
    event.map(
      goTo: (n) {
        emit(
          state.copyWith(
            previus: n.navigation,
            selectedIndex: n.navigation.index,
          ),
        );
      },
    );
  }
}
