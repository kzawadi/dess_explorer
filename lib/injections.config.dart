// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/on_boarding/bloc/on_boarding_bloc.dart' as _i9;
import 'domain/on_boarding/i_atsign_on_boarding_facade.dart' as _i4;
import 'domain/on_boarding/use_cases/get_on_boarded_at_sign_use_case.dart'
    as _i11;
import 'domain/on_boarding/use_cases/load_client_prefs_use_case.dart' as _i6;
import 'domain/on_boarding/use_cases/on_board_data_when_succesful_use_case.dart'
    as _i8;
import 'domain/on_boarding/use_cases/on_boarding_use_cases.dart' as _i10;
import 'infractructure/on_boarding/onboarding_atsign_facade.dart' as _i5;
import 'presentation/routes/router.dart' as _i3;
import 'shared/global_navigator_key.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.$Router>(_i3.$Router());
  gh.lazySingleton<_i4.IAtsignOnBoardingFacade>(
      () => _i5.OnBoardingAtsignFacade());
  gh.factory<_i6.LoadAtClientPreferenceUseCase>(() =>
      _i6.LoadAtClientPreferenceUseCase(get<_i4.IAtsignOnBoardingFacade>()));
  gh.singleton<_i7.NavService>(_i7.NavService());
  gh.factory<_i8.OnBoardDataWhenSuccessfulUseCase>(() =>
      _i8.OnBoardDataWhenSuccessfulUseCase(get<_i4.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i9.OnBoardingBloc>(() => _i9.OnBoardingBloc(
      get<_i10.LoadAtClientPreferenceUseCase>(),
      get<_i10.GetOnBoardedAtSignUseCase>(),
      get<_i10.OnBoardDataWhenSuccessfulUseCase>()));
  gh.factory<_i11.GetOnBoardedAtSignUseCase>(
      () => _i11.GetOnBoardedAtSignUseCase(get<_i4.IAtsignOnBoardingFacade>()));
  return get;
}
