import 'package:freezed_annotation/freezed_annotation.dart';

part 'at_platform_failures.freezed.dart';

@freezed
class AtPlatformFailure with _$AtPlatformFailure {
  const factory AtPlatformFailure.cancelledByUser() = CancelledByUser;
  const factory AtPlatformFailure.failedToGetgetApplicationSupportDirectory() =
      FailedToGetgetApplicationSupportDirectory;
  const factory AtPlatformFailure.serverError() = ServerError;
  const factory AtPlatformFailure.failToSetOnBoardData() = FailToSetOnBoardData;
  const factory AtPlatformFailure.failToSetUsername() = _FailToSetUsername;
  const factory AtPlatformFailure.failToDecrypt() = _FailToDecrypt;
  const factory AtPlatformFailure.keyNotFoundException() =
      _KeyNotFoundException;
  const factory AtPlatformFailure.atPublicKeyChangeException() =
      _AtPublicKeyChangeException;
  const factory AtPlatformFailure.sharedKeyNotFoundException() =
      _SharedKeyNotFoundException;
  const factory AtPlatformFailure.selfKeyNotFoundException() =
      _SelfKeyNotFoundException;
  const factory AtPlatformFailure.atClientException() = _AtClientException;
  const factory AtPlatformFailure.atKeyException() = _AtKeyException;
}
