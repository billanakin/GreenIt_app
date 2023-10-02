import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/signUp/components/body.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
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
