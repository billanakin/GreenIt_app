import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    this.currentIndex,
    required this.title,
    required this.subtitle,
  });

  final int? currentIndex;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: kPrimaryHeaderTextStyle,
        ),
        Text(
          subtitle,
          style: kPrimaryBodyTextStyle,
        ),
      ],
    );
  }
}
