import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        child: ListView.builder(
          itemBuilder: ((context, index) => const Placeholder()),
        ),
      ),
    );
  }
}
