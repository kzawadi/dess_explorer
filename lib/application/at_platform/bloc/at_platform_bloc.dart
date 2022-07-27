import 'dart:async';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:bloc/bloc.dart';
import 'package:dess_explorer/domain/atplatform/use_cases/get_all_keys_use_case.dart';
import 'package:dess_explorer/domain/atplatform/use_cases/get_keys_value_use_case.dart';
import 'package:dess_explorer/domain/core/at_platform_failures.dart';
import 'package:dess_explorer/domain/core/value_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'at_platform_event.dart';
part 'at_platform_state.dart';
part 'at_platform_bloc.freezed.dart';

@lazySingleton
class AtPlatformBloc extends Bloc<AtPlatformEvent, AtPlatformState> {
  AtPlatformBloc(this._getAllKeysUseCase, this._getKeyValueUseCase)
      : super(AtPlatformState.initial()) {
    on<AtPlatformEvent>(_eventHandler);
  }

  final GetAllKeysUseCase _getAllKeysUseCase;
  final GetKeyValueUseCase _getKeyValueUseCase;
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
      getKeysValue: (k) async {
        await _getKeyValueUseCase.call(k.atKey).then((value) {
          value.fold(
            (l) => emit(
              state.copyWith(showErrorMessages: true, error: l),
            ),
            (r) => emit(state.copyWith(atValue: r, refreshValues: true)),
          );
        });
      },
      resetValues: (_) {
        emit(state.copyWith(refreshValues: false));
      },
    );
  }
}
