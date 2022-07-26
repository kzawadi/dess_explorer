import 'dart:async';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:bloc/bloc.dart';
import 'package:dess_explorer/domain/atplatform/use_cases/get_all_keys_use_case.dart';
import 'package:dess_explorer/domain/core/at_platform_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'at_platform_event.dart';
part 'at_platform_state.dart';
part 'at_platform_bloc.freezed.dart';

@lazySingleton
class AtPlatformBloc extends Bloc<AtPlatformEvent, AtPlatformState> {
  AtPlatformBloc(this._getAllKeysUseCase) : super(AtPlatformState.initial()) {
    on<AtPlatformEvent>(_eventHandler);
  }

  final GetAllKeysUseCase _getAllKeysUseCase;
  FutureOr<void> _eventHandler(
    AtPlatformEvent event,
    Emitter<AtPlatformState> emit,
  ) async {
    await event.map(
      started: (_) {},
      getAllKeys: (v) async {
        await _getAllKeysUseCase
            .call(v.regex, v.sharedBy, v.sharedWith)
            .then((value) {
          value.fold(
            (l) => emit(
              state.copyWith(
                showErrorMessages: true,
                error: l,
              ),
            ),
            (r) => emit(
              state.copyWith(
                liveData: true,
                data: r,
              ),
            ),
          );
        });
      },
    );
  }
}
