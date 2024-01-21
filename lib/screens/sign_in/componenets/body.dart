import 'package:flutter/material.dart';
import 'package:greenit_app/components/forms/account_options.dart';
import 'package:greenit_app/components/forms/account_options_divider.dart';
import 'package:greenit_app/components/forms/no_account.dart';
import 'package:greenit_app/components/forms/header_description.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/sign_in/componenets/sign_in_form.dart';
import 'package:greenit_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
            child: Column(
              children: [
                VerticalSpacing(of: SizeConfig.screenHeight * 0.04),
                const HeaderDescription(
                  title: 'Welcome Back!',
                  text:
                      'Please enter your credentials\n to access your account.',
                ),
                VerticalSpacing(of: SizeConfig.screenHeight * 0.06),
                const SignInForm(),
                VerticalSpacing(of: SizeConfig.screenHeight * 0.03),
                const AccountOptionsDivider(),
                VerticalSpacing(of: SizeConfig.screenHeight * 0.03),
                const AccountOptions(),
                const VerticalSpacing(),
                const NoAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
