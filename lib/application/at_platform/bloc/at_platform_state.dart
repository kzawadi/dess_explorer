part of 'at_platform_bloc.dart';

@freezed
class AtPlatformState with _$AtPlatformState {
  const factory AtPlatformState({
    required bool showErrorMessages,
    required bool liveData,
    AtPlatformFailure? error,
    List<AtKey>? data,
    Value? atValue,
    Option<AtClientPreference>? prefs,
    required String secondaryServerAdress,
    required bool refreshValues,
  }) = _AtPlatformState;

  factory AtPlatformState.initial() => const AtPlatformState(
        showErrorMessages: false,
        liveData: false,
        refreshValues: false,
        secondaryServerAdress: '',
        prefs: None(),
      );

  // const factory AtPlatformState.keys(
  //   bool showErors,
  // ) = _keys;
  // const factory AtPlatformState.error() = _error;
}
