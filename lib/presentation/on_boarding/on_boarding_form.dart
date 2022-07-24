import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dess_explorer/application/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:dess_explorer/presentation/routes/router.gr.dart';
import 'package:dess_explorer/shared/at_constants.dart';
import 'package:dess_explorer/shared/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingForm extends StatelessWidget {
  const OnBoardingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnBoardingBloc, OnBoardingState>(
      listener: (context, state) {
        state.mapOrNull(
          failure: (state) {
            // todo(kzawadi):  make snack bar or something to show these errors
            // Logger(printer: PrettyPrinter()).e(
            //   'On Boarding failed',
            //   state.onBoardingFailure.mapOrNull(
            //     cancelledByUser: (_) => TextStrings.cancelledByUser,
            //     failedToGetgetApplicationSupportDirectory: (_) =>
            //         TextStrings.failuireSupportDirectory,
            //     serverError: (_) => TextStrings.serverError,
            //     failToSetOnBoardData: (_) => TextStrings.failureSettingData,
            //   ),
            // );
          },
          loading: (state) {
            Onboarding(
              context: context,
              onboard: (value, atsign) {
                context.read<OnBoardingBloc>().add(
                      OnBoardingEvent.atSignOnBoardingSucces(value, atsign),
                    );
              },
              onError: (error) {
                context.read<OnBoardingBloc>().add(
                      OnBoardingEvent.onBoardingError(error),
                    );
              },
              atClientPreference: state.atClientPreference,
              rootEnvironment: RootEnvironment.Staging,
              // appAPIKey: Constants.appApiKey,
              domain: AtConstants.rootDomain,
              appColor: Colors.cyan,
            );
          },
          loadSuccess: (state) {
            AutoRouter.of(context).replace(const HomePageRoute());
          },
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          initial: (_) => const OboardInfo(),
          loading: (_) => const OboardInfo(),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}

class OboardInfo extends StatelessWidget {
  const OboardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AllImages.onboarding,
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
