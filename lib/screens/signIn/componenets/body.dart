import 'package:flutter/material.dart';
import 'package:greenit_version1/components/account_options.dart';
import 'package:greenit_version1/components/account_options_divider.dart';
import 'package:greenit_version1/components/no_account.dart';
import 'package:greenit_version1/components/welcome_text.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/signIn/componenets/sign_in_form.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                VerticalSpacing(of: SizeConfig.screenHeight * 0.04),
                const WelcomeText(
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
