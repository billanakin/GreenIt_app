import 'package:flutter/material.dart';
import 'package:greenit_version1/components/forms/account_options.dart';
import 'package:greenit_version1/components/forms/account_options_divider.dart';
import 'package:greenit_version1/components/forms/policy_and_services_text.dart';
import 'package:greenit_version1/components/forms/header_description.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/signUp/components/sign_up_form.dart';
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
                title: 'Register Account',
                text:
                    "Begin your journey by providing the following\n details to create your account.",
              ),
              VerticalSpacing(of: SizeConfig.screenHeight * 0.05),
              const SignUpForm(),
              VerticalSpacing(of: SizeConfig.screenHeight * 0.03),
              const AccountOptionsDivider(),
              VerticalSpacing(of: SizeConfig.screenHeight * 0.03),
              const AccountOptions(),
              const VerticalSpacing(),
              const PolicyAndServicesText(),
            ],
          ),
        ),
      ),
    );
  }
}
