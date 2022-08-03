// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/at_platform/bloc/at_platform_bloc.dart' as _i19;
import 'application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart' as _i4;
import 'application/on_boarding/bloc/on_boarding_bloc.dart' as _i12;
import 'domain/atplatform/i_atplatoform_facade.dart' as _i5;
import 'domain/atplatform/use_cases/get_all_keys_use_case.dart' as _i14;
import 'domain/atplatform/use_cases/get_keys_value_use_case.dart' as _i15;
import 'domain/atplatform/use_cases/get_preferences_use_case.dart' as _i17;
import 'domain/atplatform/use_cases/get_secondary_server_adress_use_case.dart'
    as _i18;
import 'domain/on_boarding/i_atsign_on_boarding_facade.dart' as _i7;
import 'domain/on_boarding/use_cases/get_on_boarded_at_sign_use_case.dart'
    as _i16;
import 'domain/on_boarding/use_cases/load_client_prefs_use_case.dart' as _i9;
import 'domain/on_boarding/use_cases/on_board_data_when_succesful_use_case.dart'
    as _i11;
import 'domain/on_boarding/use_cases/on_boarding_use_cases.dart' as _i13;
import 'infractructure/atplatform/at_platform_facade.dart' as _i6;
import 'infractructure/on_boarding/onboarding_atsign_facade.dart' as _i8;
import 'presentation/routes/router.dart' as _i3;
import 'shared/global_navigator_key.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.$Router>(_i3.$Router());
  gh.lazySingleton<_i4.BotNavBarBloc>(() => _i4.BotNavBarBloc());
  gh.lazySingleton<_i5.IAtPlatformFacade>(() => _i6.AtPlatformFacade());
  gh.lazySingleton<_i7.IAtsignOnBoardingFacade>(
      () => _i8.OnBoardingAtsignFacade());
  gh.factory<_i9.LoadAtClientPreferenceUseCase>(() =>
      _i9.LoadAtClientPreferenceUseCase(get<_i7.IAtsignOnBoardingFacade>()));
  gh.singleton<_i10.NavService>(_i10.NavService());
  gh.factory<_i11.OnBoardDataWhenSuccessfulUseCase>(() =>
      _i11.OnBoardDataWhenSuccessfulUseCase(
          get<_i7.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i12.OnBoardingBloc>(() => _i12.OnBoardingBloc(
      get<_i13.LoadAtClientPreferenceUseCase>(),
      get<_i13.GetOnBoardedAtSignUseCase>(),
      get<_i13.OnBoardDataWhenSuccessfulUseCase>()));
  gh.lazySingleton<_i14.GetAllKeysUseCase>(
      () => _i14.GetAllKeysUseCase(get<_i5.IAtPlatformFacade>()));
  gh.lazySingleton<_i15.GetKeyValueUseCase>(
      () => _i15.GetKeyValueUseCase(get<_i5.IAtPlatformFacade>()));
  gh.factory<_i16.GetOnBoardedAtSignUseCase>(
      () => _i16.GetOnBoardedAtSignUseCase(get<_i7.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i17.GetPreferenceUseCase>(
      () => _i17.GetPreferenceUseCase(get<_i5.IAtPlatformFacade>()));
  gh.lazySingleton<_i18.GetSecondaryServerAdressUseCase>(
      () => _i18.GetSecondaryServerAdressUseCase(get<_i5.IAtPlatformFacade>()));
  gh.lazySingleton<_i19.AtPlatformBloc>(() => _i19.AtPlatformBloc(
      get<_i14.GetAllKeysUseCase>(),
      get<_i15.GetKeyValueUseCase>(),
      get<_i18.GetSecondaryServerAdressUseCase>(),
      get<_i17.GetPreferenceUseCase>()));
  return get;
}
