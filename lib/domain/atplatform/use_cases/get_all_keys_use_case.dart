import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:dartz/dartz.dart';
import 'package:dess_explorer/domain/atplatform/i_atplatoform_facade.dart';
import 'package:dess_explorer/domain/core/at_platform_failures.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllKeysUseCase {
  GetAllKeysUseCase(this._atPlatformFacade);

  final IAtPlatformFacade _atPlatformFacade;

  Future<Either<AtPlatformFailure, List<AtKey>>> call(
    String? regex,
    String? sharedBy,
    String? sharedWith,
  ) =>
      _atPlatformFacade.getAllKeys(regex, sharedBy, sharedWith);
}
