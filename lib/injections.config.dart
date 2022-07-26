// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/at_platform/bloc/at_platform_bloc.dart' as _i15;
import 'application/on_boarding/bloc/on_boarding_bloc.dart' as _i11;
import 'domain/atplatform/i_atplatoform.dart' as _i4;
import 'domain/atplatform/use_cases/get_all_keys_use_case.dart' as _i13;
import 'domain/on_boarding/i_atsign_on_boarding_facade.dart' as _i6;
import 'domain/on_boarding/use_cases/get_on_boarded_at_sign_use_case.dart'
    as _i14;
import 'domain/on_boarding/use_cases/load_client_prefs_use_case.dart' as _i8;
import 'domain/on_boarding/use_cases/on_board_data_when_succesful_use_case.dart'
    as _i10;
import 'domain/on_boarding/use_cases/on_boarding_use_cases.dart' as _i12;
import 'infractructure/atplatform/at_platform_facade.dart' as _i5;
import 'infractructure/on_boarding/onboarding_atsign_facade.dart' as _i7;
import 'presentation/routes/router.dart' as _i3;
import 'shared/global_navigator_key.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.$Router>(_i3.$Router());
  gh.lazySingleton<_i4.IAtPlatformFacade>(() => _i5.AtPlatformFacade());
  gh.lazySingleton<_i6.IAtsignOnBoardingFacade>(
      () => _i7.OnBoardingAtsignFacade());
  gh.factory<_i8.LoadAtClientPreferenceUseCase>(() =>
      _i8.LoadAtClientPreferenceUseCase(get<_i6.IAtsignOnBoardingFacade>()));
  gh.singleton<_i9.NavService>(_i9.NavService());
  gh.factory<_i10.OnBoardDataWhenSuccessfulUseCase>(() =>
      _i10.OnBoardDataWhenSuccessfulUseCase(
          get<_i6.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i11.OnBoardingBloc>(() => _i11.OnBoardingBloc(
      get<_i12.LoadAtClientPreferenceUseCase>(),
      get<_i12.GetOnBoardedAtSignUseCase>(),
      get<_i12.OnBoardDataWhenSuccessfulUseCase>()));
  gh.lazySingleton<_i13.GetAllKeysUseCase>(
      () => _i13.GetAllKeysUseCase(get<_i4.IAtPlatformFacade>()));
  gh.factory<_i14.GetOnBoardedAtSignUseCase>(
      () => _i14.GetOnBoardedAtSignUseCase(get<_i6.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i15.AtPlatformBloc>(
      () => _i15.AtPlatformBloc(get<_i13.GetAllKeysUseCase>()));
  return get;
}
