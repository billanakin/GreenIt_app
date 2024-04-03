import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/complete_profile/components/body.dart';
import 'package:greenit_app/size_config.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'package:greenit_app/models/forms/signup_form.dart' as model;

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var signupForm =
        ModalRoute.of(context)!.settings.arguments as model.SignupForm;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Sign Up',
          style: kAppBarTitleTextStyle.copyWith(
            color: kSecondaryBodyTextColor,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(getProportionateScreenHeight(5)),
          child: buildProgressIndicator(),
        ),
      ),
      body: Body(signupForm: signupForm),
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