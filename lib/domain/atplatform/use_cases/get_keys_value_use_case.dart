import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:dartz/dartz.dart';
import 'package:dess_explorer/domain/atplatform/i_atplatoform_facade.dart';
import 'package:dess_explorer/domain/core/at_platform_failures.dart';
import 'package:dess_explorer/domain/core/value_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetKeyValueUseCase {
  GetKeyValueUseCase(this._iAtPlatformFacade);

  final IAtPlatformFacade _iAtPlatformFacade;
  Future<Either<AtPlatformFailure, Value>> call(AtKey atKey) =>
      _iAtPlatformFacade.getValue(atKey);
}
