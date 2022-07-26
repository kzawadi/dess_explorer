import 'package:dess_explorer/application/at_platform/bloc/at_platform_bloc.dart';
import 'package:dess_explorer/injections.dart';
import 'package:dess_explorer/presentation/at_platform/at_platform_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AtPlatfromPage extends StatelessWidget {
  const AtPlatfromPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AtPlatformBloc>(
      create: (context) => getIt<AtPlatformBloc>(),
      child: const AtPlatformView(),
    );
  }
}
