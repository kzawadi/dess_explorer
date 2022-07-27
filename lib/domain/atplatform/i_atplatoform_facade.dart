import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:dartz/dartz.dart';
import 'package:dess_explorer/domain/core/at_platform_failures.dart';
import 'package:dess_explorer/domain/core/value_model.dart';

abstract class IAtPlatformFacade {
  Future<Either<AtPlatformFailure, List<AtKey>>> getAllKeys(
    String? regex,
    String? sharedBy,
    String? sharedWith,
  );
  Future<Either<AtPlatformFailure, Value>> getValue(AtKey atKey);

  Future<Option<String>> getSecondaryServerAdress({String? atSign});
}
