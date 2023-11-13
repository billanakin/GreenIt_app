import 'package:flutter/material.dart';
import 'package:greenit_version1/screens/social/components/body.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const Scaffold(
        body: Body(),
      ),
    );
  }
}
