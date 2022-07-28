import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:dartz/dartz.dart';
import 'package:dess_explorer/domain/atplatform/i_atplatoform_facade.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetPreferenceUseCase {
  GetPreferenceUseCase(this._iAtPlatformFacade);

  final IAtPlatformFacade _iAtPlatformFacade;
  Option<AtClientPreference> call() => _iAtPlatformFacade.getPreference();
}
