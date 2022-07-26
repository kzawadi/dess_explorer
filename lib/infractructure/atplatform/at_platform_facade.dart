import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:dess_explorer/domain/atplatform/i_atplatoform.dart';
import 'package:dess_explorer/domain/core/at_platform_failures.dart';
import 'package:dess_explorer/infractructure/atplatform/platform_services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAtPlatformFacade)
class AtPlatformFacade implements IAtPlatformFacade {
  AtClientManager _atClientManager = AtClientManager.getInstance();
  final SdkServices _sdkServices = SdkServices.getInstance();
  final AtSignLogger _logger = AtSignLogger('Settings facade');

  @override
  Future<Either<AtPlatformFailure, List<AtKey>>> getAllKeys(
    String? regex,
    String? sharedBy,
    String? sharedWith,
  ) async {
    try {
      final result = await _atClientManager.atClient
          .getAtKeys(regex: regex, sharedBy: sharedBy, sharedWith: sharedWith);
      return right(result);
    } on InvalidSyntaxException catch (e, s) {
      _logger.severe('Error while fetching keys', e, s);
      return left(const AtPlatformFailure.serverError());
    } on Exception catch (e) {
      _logger.severe(
        'Something is very wrong getting ALL AT Keys...${e.toString()}',
      );
      return left(const AtPlatformFailure.serverError());
    }
  }

  @override
  Future<Either<AtPlatformFailure, Unit>> getUserName() {
    // TODO: implement getUserName
    throw UnimplementedError();
  }
}
