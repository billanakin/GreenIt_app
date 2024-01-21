import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/utility_app_bar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/newPost/components/body.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class NewPostScreen extends StatelessWidget {
  const NewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: UtilityAppBar(
        leadingText: 'Cancel',
        title: 'New Post',
        actionButtonText: 'Next',
        actionButtonPress: () {},
      ),
      body: Column(
        children: [
          buildProgressIndicator(),
          const Body(),
        ],
      ),
    );
  }

  StepProgressIndicator buildProgressIndicator() {
    return const StepProgressIndicator(
      padding: 0,
      selectedColor: kPrimaryActiveColor,
      unselectedColor: Color(0x66868686),
      currentStep: 1,
      totalSteps: 2,
      size: 4,
    );
  }
}
