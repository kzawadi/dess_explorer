import 'dart:convert';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:dess_explorer/domain/atplatform/i_atplatoform_facade.dart';
import 'package:dess_explorer/domain/core/at_platform_failures.dart';
import 'package:dess_explorer/domain/core/value_model.dart';
import 'package:dess_explorer/infractructure/atplatform/platform_services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAtPlatformFacade)
class AtPlatformFacade implements IAtPlatformFacade {
  AtClientManager _atClientManager = AtClientManager.getInstance();
  final SdkServices _sdkServices = SdkServices.getInstance();
  final AtSignLogger _logger = AtSignLogger('atPlatform facade');

  @override
  Future<Either<AtPlatformFailure, List<AtKey>>> getAllKeys(
    String? regex,
    String? sharedBy,
    String? sharedWith,
  ) async {
    try {
      final result = await _atClientManager.atClient
          .getAtKeys(regex: regex, sharedBy: sharedBy, sharedWith: sharedWith);
      _logger.info(result.first.metadata);
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
  Future<Either<AtPlatformFailure, Value>> getValue(AtKey atKey) async {
    try {
      final r = await _atClientManager.atClient.get(atKey);

      final parsedJson = jsonDecode(r.value as String);
      final v = Value.fromJson(parsedJson as Map<String, dynamic>);
      _logger.info(v);
      return right(v);
    } on AtKeyException catch (e) {
      _logger.severe('The passed key is not correct $e');
      return left(const AtPlatformFailure.atClientException());
    } on AtDecryptionException catch (e) {
      _logger.severe('Failure to decrypt the results $e');
      return left(const AtPlatformFailure.failToDecrypt());
    } on AtClientException catch (e) {
      _logger.severe('cant reach the cloud secondary $e');
      return left(const AtPlatformFailure.atKeyException());
    }
  }

  @override
  Future<Option<String>> getSecondaryServerAdress({String? atSign}) async {
    final b = _atClientManager.atClient.getCurrentAtSign();
    return _atClientManager.secondaryAddressFinder!
        .findSecondary(atSign ?? b!)
        .then((value) => optionOf(value.toString()));
  }

  @override
  Option<AtClientPreference> getPreference() {
    final c = _atClientManager.atClient.getPreferences();
    return optionOf(c);

    // c!.isAvailable().then((value) {
    //   print(value);
    //   print(c);
    // });
  }
}
