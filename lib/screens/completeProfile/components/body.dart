import 'package:flutter/material.dart';
import 'package:greenit_version1/components/forms/policy_and_services_text.dart';
import 'package:greenit_version1/components/forms/header_description.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/completeProfile/components/complete_profile_form.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
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
