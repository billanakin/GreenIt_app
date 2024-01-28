import 'package:flutter/material.dart';
import 'package:greenit_app/components/forms/policy_and_services_text.dart';
import 'package:greenit_app/components/forms/header_description.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/complete_profile/components/complete_profile_form.dart';
import 'package:greenit_app/size_config.dart';

import 'package:greenit_app/models/forms/signup_form.dart' as model;

class Body extends StatelessWidget {
  final model.SignupForm signupForm;

  const Body({super.key, required this.signupForm});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: kDefaultHorizontalPadding,
              right: kDefaultHorizontalPadding,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              children: [
                VerticalSpacing(of: SizeConfig.screenHeight * 0.04),
                const HeaderDescription(
                  title: 'Complete Profile',
                  text:
                      "Almost there! Complete your profile\n to personalize your experience.",
                ),
                VerticalSpacing(of: SizeConfig.screenHeight * 0.05),
                CompleteProfileForm(signupForm: signupForm),
                VerticalSpacing(of: SizeConfig.screenHeight * 0.03),
                const PolicyAndServicesText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
