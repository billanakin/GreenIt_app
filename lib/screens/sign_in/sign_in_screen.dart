import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/sign_in/componenets/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Sign In',
          style: kAppBarTitleTextStyle.copyWith(
            color: kSecondaryBodyTextColor,
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
