import 'package:dartz/dartz.dart';
import 'package:dess_explorer/domain/atplatform/i_atplatoform_facade.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetSecondaryServerAdressUseCase {
  GetSecondaryServerAdressUseCase(this._iAtPlatformFacade);

  final IAtPlatformFacade _iAtPlatformFacade;

  Future<Option<String>> call({String? atSign}) =>
      _iAtPlatformFacade.getSecondaryServerAdress(atSign: atSign);
}
