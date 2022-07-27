import 'package:auto_route/auto_route.dart';
import 'package:dess_explorer/application/at_platform/bloc/at_platform_bloc.dart';
import 'package:dess_explorer/injections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_view/json_view.dart';

class JsonViewerWidget extends StatelessWidget {
  const JsonViewerWidget({
    // this.section = NavSection.general,
    Key? key,
    // this.json,
  }) : super(key: key);

  /// Current nav section
  // final NavSection section;
  // final dynamic json;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AtPlatformBloc, AtPlatformState>(
      bloc: getIt<AtPlatformBloc>(),
      buildWhen: (previous, current) => previous.atValue != current.atValue,
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          extendBody: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            actions: [
              CloseButton(
                key: key,
                onPressed: () {
                  getIt<AtPlatformBloc>().add(
                    const AtPlatformEvent.resetValues(),
                  );
                  AutoRouter.of(context).pop();
                },
              ),
              const SizedBox(width: 10),
            ],
          ),
          body: JsonConfig(
            /// your customize configuration
            data: JsonConfigData(
              animation: true,
              animationDuration: const Duration(milliseconds: 250),
              animationCurve: Curves.ease,
              itemPadding: const EdgeInsets.only(left: 8),
              color: const JsonColorScheme(
                stringColor: Colors.grey,
              ),
              style: const JsonStyleScheme(
                arrow: Icon(Icons.arrow_right),
                depth: 1,
              ),
            ),

            /// any widget will contain jsonView
            child: state.refreshValues
                ? JsonView(
                    json: state.atValue!.toJson(),
                  )
                : const SizedBox(),
          ),

          // Row(
          //   children: [
          // const SizedBox(width: 50),
          // const SizedBox(width: 60),

          // JsonView(json: json),
// In this case, a vertical viewport was given an unlimited amount of horizontal space in which to expand
          // PageView(
          //   physics: const NeverScrollableScrollPhysics(),
          //   scrollDirection: Axis.vertical,
          // ),
          //  SizedBox(width: 50),
          //   ],
          // ),
        );
      },
    );
  }
}
