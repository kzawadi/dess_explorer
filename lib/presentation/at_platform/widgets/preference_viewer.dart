import 'package:dess_explorer/application/at_platform/bloc/at_platform_bloc.dart';
import 'package:dess_explorer/injections.dart';
import 'package:dess_explorer/presentation/components/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PreferencesScreenScene extends StatelessWidget {
  /// Constructor
  const PreferencesScreenScene(
      // this.settings,
      {
    Key? key,
  }) : super(key: key);

  /// Settings
  // final AllSettings settings;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AtPlatformBloc, AtPlatformState>(
      bloc: getIt<AtPlatformBloc>(),
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.only(top: 20),
          child: state.prefs!.fold(
            () => const CupertinoActivityIndicator(),
            (a) => ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'At-Sign preferences',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                const SizedBox(height: 20),
                InfoBanner(
                  title: 'Namespace',
                  caption: a.namespace,
                ),
                const SizedBox(height: 20),
                InfoBanner(
                  title: 'Root Domain',
                  caption: a.rootDomain,
                ),
                const SizedBox(height: 20),
                InfoBanner(
                  title: 'Root Port',
                  caption: a.rootPort.toString(),
                ),
                const SizedBox(height: 20),
                InfoBanner(
                  title: 'Commit Log Path',
                  caption: a.commitLogPath,
                ),
                const SizedBox(height: 20),
                InfoBanner(
                  title: 'downloadPath',
                  caption: a.downloadPath,
                ),
                const SizedBox(height: 20),
                InfoBanner(
                  title: 'Max Data Size',
                  caption: a.maxDataSize.toString(),
                ),
                const SizedBox(height: 20),
                InfoBanner(
                  title: 'Monitor heart beat interval',
                  caption: a.monitorHeartbeatInterval.toString(),
                ),
                const SizedBox(height: 20),
                InfoBanner(
                  title: 'Out bound connection time out',
                  caption: a.outboundConnectionTimeout.toString(),
                ),
                const SizedBox(height: 20),
                InfoBanner(
                  title: 'Hive storage path',
                  caption: a.hiveStoragePath,
                ),
                const SizedBox(height: 20),
                InfoBanner(
                  title: 'Private Key',
                  caption: a.privateKey,
                ),
                const SizedBox(height: 20),
                InfoBanner(
                  title: 'Key store Secret',
                  caption: a.keyStoreSecret.toString(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class InfoBanner extends StatelessWidget {
  const InfoBanner({
    Key? key,
    this.title,
    this.caption,
  }) : super(key: key);

  final String? title;
  final String? caption;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.deepOrange.withOpacity(0.1),
            border: Border.all(
              color: Colors.deepOrange,
              width: 0.5,
            ),
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              Subheading(title ?? ''),
              const SizedBox(width: 20),
              Expanded(
                child: Caption(caption ?? ''),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }
}
