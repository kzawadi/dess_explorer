// ignore_for_file: cascade_invocations
import 'package:at_onboarding_flutter/services/size_config.dart';
import 'package:dess_explorer/application/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:dess_explorer/injections.dart';
import 'package:dess_explorer/presentation/on_boarding/on_boarding_form.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider<OnBoardingBloc>(
      create: (context) => getIt<OnBoardingBloc>()
        ..add(
          const OnBoardingEvent.onBoardingAtSign(),
        ),
      child: const OnBoardingForm(),
    );
  }
}
