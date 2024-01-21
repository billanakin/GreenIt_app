import 'package:flutter/material.dart';
import 'package:greenit_app/components/forms/policy_and_services_text.dart';
import 'package:greenit_app/components/forms/header_description.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/complete_profile/components/complete_profile_form.dart';
import 'package:greenit_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
          child: Column(
            children: [
              VerticalSpacing(of: SizeConfig.screenHeight * 0.04),
              const HeaderDescription(
                title: 'Complete Profile',
                text:
                    "Almost there! Complete your profile\n to personalize your experience.",
              ),
              VerticalSpacing(of: SizeConfig.screenHeight * 0.05),
              const CompleteProfileForm(),
              VerticalSpacing(of: SizeConfig.screenHeight * 0.03),
              const PolicyAndServicesText(),
            ],
          ),
        ),
      ),
    );
  }
}
