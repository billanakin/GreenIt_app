import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/completeProfile/components/body.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

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
      currentStep: 2,
      totalSteps: 2,
      selectedColor: kPrimaryActiveColor,
      unselectedColor: Color(0x66868686),
      padding: 0,
      size: 4,
    );
  }
}
