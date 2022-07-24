import 'package:dartz/dartz.dart';
import 'package:dess_explorer/domain/on_boarding/i_atsign_on_boarding_facade.dart';
import 'package:injectable/injectable.dart';

///This is a usecase of getting Onboarded @sign
///it return an [Option] of either a [String] @sign or nothing
///using functional programing make it easier to handle its return in UI
@injectable
class GetOnBoardedAtSignUseCase {
  const GetOnBoardedAtSignUseCase(this._iAtsignOnBoardingFacade);

  final IAtsignOnBoardingFacade _iAtsignOnBoardingFacade;

  Option<String> call() => _iAtsignOnBoardingFacade.getOnBoardedAtSign();
}
