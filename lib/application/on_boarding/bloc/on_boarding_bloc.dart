import 'dart:async';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dess_explorer/domain/core/at_platform_failures.dart';
import 'package:dess_explorer/domain/on_boarding/use_cases/on_boarding_use_cases.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';
part 'on_boarding_bloc.freezed.dart';

///The Business Logic of OnBoarding an @sign
///It takes [OnBoardingEvent] as event and [OnBoardingState]
///and fetch its data from the individual use cases and emit the
///corespoding states [OnBoardingState].
@lazySingleton
class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc(
    this._loadAtClientPreferenceUseCase,
    this._getOnBoardedAtSignUseCase,
    this._onBoardDataWhenSuccessfulUseCase,
  ) : super(const OnBoardingState.initial()) {
    on<OnBoardingEvent>(_onBoardingEventHandler);
  }

  final LoadAtClientPreferenceUseCase _loadAtClientPreferenceUseCase;
  final GetOnBoardedAtSignUseCase _getOnBoardedAtSignUseCase;
  final OnBoardDataWhenSuccessfulUseCase _onBoardDataWhenSuccessfulUseCase;

  FutureOr<void> _onBoardingEventHandler(
    OnBoardingEvent event,
    Emitter<OnBoardingState> emit,
  ) async {
    await event.when(
      onBoardingAtSign: () async {
        final results = await _loadAtClientPreferenceUseCase();
        emit(
          results.fold(
            OnBoardingState.failure,
            OnBoardingState.loading,
          ),
        );
      },
      atSignOnBoardingSucces: (value, atsign) async {
        final atSign = _getOnBoardedAtSignUseCase.call();
        _onBoardDataWhenSuccessfulUseCase(value, atsign);

        emit(
          OnBoardingState.loadSuccess(atSign),
        );
      },
      onBoardingError: (error) {
        emit(
          OnBoardingState.onBoardingError(error),
        );
      },
    );
  }
}
