part of 'at_platform_bloc.dart';

@freezed
class AtPlatformEvent with _$AtPlatformEvent {
  const factory AtPlatformEvent.started() = _Started;
  const factory AtPlatformEvent.getAllKeys({
    String? regex,
    String? sharedBy,
    String? sharedWith,
  }) = _getAllKeys;
}
