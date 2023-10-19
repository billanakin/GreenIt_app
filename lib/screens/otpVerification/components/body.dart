import 'package:flutter/material.dart';
import 'package:greenit_version1/components/forms/welcome_text.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/otpVerification/components/otp_verification_form.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              VerticalSpacing(of: SizeConfig.screenHeight * 0.04),
              const WelcomeText.verification(
                title: 'OTP Verification',
                text: 'We sent your code to +1 898 860 ***',
              ),
              VerticalSpacing(of: SizeConfig.screenHeight * 0.1),
              const OtpVerificationForm()
            ],
          ),
        ),
      ),
    );
  }
}
