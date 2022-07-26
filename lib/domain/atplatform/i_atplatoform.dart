import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:dartz/dartz.dart';
import 'package:dess_explorer/domain/core/at_platform_failures.dart';

abstract class IAtPlatformFacade {
  Future<Either<AtPlatformFailure, List<AtKey>>> getAllKeys(
    String? regex,
    String? sharedBy,
    String? sharedWith,
  );
  Future<Either<AtPlatformFailure, Unit>> getUserName();
}
