import 'package:flutter/material.dart';
import 'package:greenit_version1/screens/explore/components/body.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(),
        body: const Body(),
      ),
    );
  }
}
