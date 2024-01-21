import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: kAppBarTitleTextStyle.copyWith(
            color: kSecondaryBodyTextColor,
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
