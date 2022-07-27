import 'dart:ui';

import 'package:at_sync_ui_flutter/services/at_sync_ui_services.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dess_explorer/application/at_platform/bloc/at_platform_bloc.dart';
import 'package:dess_explorer/injections.dart';
import 'package:dess_explorer/presentation/components/custom_sync_widget.dart';
import 'package:dess_explorer/presentation/components/expansion_tile.dart';
import 'package:dess_explorer/presentation/home/widgets/screen.dart';
import 'package:dess_explorer/presentation/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AtPlatformView extends HookWidget {
  const AtPlatformView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _keyItemControler = useScrollController();
    return BlocConsumer<AtPlatformBloc, AtPlatformState>(
      bloc: getIt<AtPlatformBloc>()..add(const AtPlatformEvent.getAllKeys()),
      listener: (context, state) {},
      builder: (context, state) {
        return DessScreen(
          title: 'At PLATOFORM',
          actions: [
            StreamBuilder<AtSyncUIStatus>(
              stream: AtSyncUIService().atSyncUIListener,
              builder: (context, snapshot) => CustomSyncIndicator(
                uiStatus: snapshot.data,
                size: 50,
              ),
            ),
            const SizedBox(width: 20),
            const SizedBox(width: 20),
          ],
          child: state.liveData
              ? ListView.separated(
                  itemCount: state.data!.length,
                  physics: const BouncingScrollPhysics(),
                  controller: _keyItemControler,
                  separatorBuilder: (_, __) => const Divider(height: 4),
                  itemBuilder: (BuildContext context, int i) {
                    return SkGroupTile(
                      title: Text(
                        state.data![i].key ?? '',
                      ),
                      leading: Text(i.toString()),
                      subtitle: Text(state.data![i].namespace ?? ''),
                      trailing: Text(state.data![i].sharedWith ?? ''),
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            context.read<AtPlatformBloc>().add(
                                  AtPlatformEvent.getKeysValue(state.data![i]),
                                );

                            AutoRouter.of(context)
                                .navigate(const JsonViewerWidgetRoute());
                          },
                          child: null,
                        ),
                        MetadataRow(
                          name: 'available At',
                          value:
                              state.data![i].metadata!.availableAt.toString(),
                        ),
                        MetadataRow(
                          name: 'create At',
                          value: state.data![i].metadata!.createdAt.toString(),
                        ),
                        MetadataRow(
                          name: 'data Signature',
                          value:
                              state.data![i].metadata!.dataSignature.toString(),
                        ),
                        MetadataRow(
                          name: 'expires At',
                          value: state.data![i].metadata!.expiresAt.toString(),
                        ),
                        MetadataRow(
                          name: 'is Encrypted',
                          value:
                              state.data![i].metadata!.isEncrypted.toString(),
                        ),
                        MetadataRow(
                          name: 'refresh At',
                          value: state.data![i].metadata!.refreshAt.toString(),
                        ),
                        MetadataRow(
                          name: 'pubKey CS',
                          value: state.data![i].metadata!.pubKeyCS.toString(),
                        ),
                        MetadataRow(
                          name: 'is Hidden',
                          value: state.data![i].metadata!.isHidden.toString(),
                        ),
                        MetadataRow(
                          name: 'is Public',
                          value: state.data![i].metadata!.isPublic.toString(),
                        ),
                        MetadataRow(
                          name: 'is Binary',
                          value: state.data![i].metadata!.isBinary.toString(),
                        ),
                        MetadataRow(
                          name: 'is Cached',
                          value: state.data![i].metadata!.isCached.toString(),
                        ),
                        MetadataRow(
                          name: 'shared Key Enc',
                          value:
                              state.data![i].metadata!.sharedKeyEnc.toString(),
                        ),
                        MetadataRow(
                          name: 'shared Key Status',
                          value: state.data![i].metadata!.sharedKeyStatus
                              .toString(),
                        ),
                        MetadataRow(
                          name: 'ttb',
                          value: state.data![i].metadata!.ttb.toString(),
                        ),
                        MetadataRow(
                          name: 'ttl',
                          value: state.data![i].metadata!.ttl.toString(),
                        ),
                        MetadataRow(
                          name: 'updated At',
                          value: state.data![i].metadata!.updatedAt.toString(),
                        ),

                        // Text(
                        //   state.data![i].metadata!.isBinary.toString(),
                        // ),
                        // Text(state.data![i].metadata!.createdAt.toString()),
                        // Text(state.data![i].metadata!.expiresAt.toString())
                      ],
                    );
                  },
                )
              : const DessScreen(
                  title: 'At Platform',
                  child: Center(child: CupertinoActivityIndicator()),
                ),
        );
      },
    );
  }
}

class MetadataRow extends StatelessWidget {
  const MetadataRow({Key? key, required this.name, required this.value})
      : super(key: key);

  final String name;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(value),
        ),
      ],
    );
  }
}
