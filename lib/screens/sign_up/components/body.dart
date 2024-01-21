import 'package:flutter/material.dart';
import 'package:greenit_app/components/forms/account_options.dart';
import 'package:greenit_app/components/forms/account_options_divider.dart';
import 'package:greenit_app/components/forms/policy_and_services_text.dart';
import 'package:greenit_app/components/forms/header_description.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/sign_up/components/sign_up_form.dart';
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
