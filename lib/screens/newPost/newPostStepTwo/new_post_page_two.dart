import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/utility_app_bar.dart';
import 'package:greenit_version1/components/buttons/primary_button.dart';
import 'package:greenit_version1/components/buttons/secondary_button.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/newPost/newPostStepTwo/components/body.dart';
import 'package:greenit_version1/size_config.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class NewPostScreenStepTwo extends StatelessWidget {
  const NewPostScreenStepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: UtilityAppBar(
        leadingText: 'Previous',
        title: 'New Post  ',
        actionButtonText: 'Post ',
        actionButtonPress:
            () {}, // TODO: Insert Here code to post, after that add dialog box or snackbar for successful posting.
      ),
      body: SafeArea(
        child: Column(
          children: [
            buildProgressIndicator(),
            const Body(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: getProportionateScreenHeight(70),
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultHorizontalPadding,
              vertical: kDefaultVerticalPadding),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                width: 1,
                color: Color(0x66868686),
              ),
            ),
          ),
          child: Center(
            child: SecondaryButton(
              text: 'Choose Location',
              press: () {}, // TODO: Insert code here to choose location
            ),
          ),
        ),
      ),
    );
  }

  StepProgressIndicator buildProgressIndicator() {
    return const StepProgressIndicator(
      padding: 0,
      selectedColor: kPrimaryActiveColor,
      unselectedColor: Color(0x66868686),
      currentStep: 2,
      totalSteps: 2,
      size: 4,
    );
  }
}
