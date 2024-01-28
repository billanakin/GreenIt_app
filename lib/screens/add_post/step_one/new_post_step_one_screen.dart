import 'package:flutter/material.dart';
import 'package:greenit_app/components/app_bar/utility_app_bar.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/add_post/step_one/components/body.dart';
import 'package:greenit_app/screens/add_post/step_two/new_post_page_two.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class NewPostStepOneScreen extends StatelessWidget {
  const NewPostStepOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: UtilityAppBar(
        leadingText: 'Cancel',
        title: 'New Post',
        actionButtonText: 'Next',
        actionButtonPress: () {
          /* TODO:
            Button wont navigate if  postTitle, postMessage, postImages is not present
            If null, present a dialog box or snackbar
          */
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewPostScreenStepTwo(),
            ),
          );
        },
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
