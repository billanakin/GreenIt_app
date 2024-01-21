import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/sign_up/components/body.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: kAppBarTitleTextStyle.copyWith(
            color: kSecondaryBodyTextColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            buildProgressIndicator(),
            const Body(),
          ],
        ),
      ),
    );
  }

  StepProgressIndicator buildProgressIndicator() {
    return const StepProgressIndicator(
      currentStep: 1,
      totalSteps: 2,
      selectedColor: kPrimaryActiveColor,
      size: 2,
    );
  }
}
