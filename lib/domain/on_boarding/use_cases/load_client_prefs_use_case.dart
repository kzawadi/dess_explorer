import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:dartz/dartz.dart';
import 'package:dess_explorer/domain/core/at_platform_failures.dart';
import 'package:dess_explorer/domain/on_boarding/i_atsign_on_boarding_facade.dart';
import 'package:injectable/injectable.dart';

///This is a use case which return an [Either] of [AtPlatformFailure] or
///the instance of [AtClientPreference] and in [OnBoardingBloc] we can handle
///the failure by emitting appropriate [OnBoardingState]'s
///this way it made it very easier to handle success and failures and do
///something logic wise from either outcomes
@injectable
class LoadAtClientPreferenceUseCase {
  LoadAtClientPreferenceUseCase(this._iAtsignOnBoardingFacade);

  final IAtsignOnBoardingFacade _iAtsignOnBoardingFacade;

  Future<Either<AtPlatformFailure, AtClientPreference>> call() =>
      _iAtsignOnBoardingFacade.loadAtClientPreference();
}
