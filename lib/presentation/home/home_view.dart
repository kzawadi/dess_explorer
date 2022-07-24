import 'package:dess_explorer/presentation/home/widgets/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DessScreen(
      title: 'Dess Home',
      actions: const [
        Text(
          'Version 0.0.1',
        ),
        SizedBox(width: 20),
        SizedBox(width: 20),
      ],
      child: CupertinoScrollbar(
        child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (_, __) => const Divider(height: 0),
          itemBuilder: (context, index) {
            return const SizedBox(
              height: 100,
              child: Text('items'),
            );
          },
        ),
      ),
    );
  }
}
