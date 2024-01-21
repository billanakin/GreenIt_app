import 'package:flutter/material.dart';
import 'package:greenit_app/screens/on_boarding/components/body.dart';
import 'package:greenit_app/size_config.dart';

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
