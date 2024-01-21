import 'package:flutter/material.dart';
import 'package:greenit_app/components/forms/header_description.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/otp_verification/components/otp_verification_form.dart';
import 'package:greenit_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
          child: Column(
            children: [
              VerticalSpacing(of: SizeConfig.screenHeight * 0.04),
              const HeaderDescription.verification(
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
