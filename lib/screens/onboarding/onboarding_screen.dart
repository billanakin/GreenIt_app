import 'package:flutter/material.dart';
import 'package:greenit_version1/screens/onboarding/components/body.dart';
import 'package:greenit_version1/size_config.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
