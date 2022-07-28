import 'dart:html';

import 'package:dess_explorer/presentation/components/typography.dart';
import 'package:flutter/material.dart';

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
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: ListView(
        children: [
          Text('FVM', style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 20),
          const InfoBanner(
            title: 'At-Sign preferences',
          ),
          SwitchListTile(
            title: const Text('hello'),
            subtitle: const Text('HIhIHi'),
            value: false,
            onChanged: (value) {},
          ),
        ],
      ),
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
