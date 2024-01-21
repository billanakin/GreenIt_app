import 'package:flutter/material.dart';
import 'package:greenit_app/screens/sign_in_success/components/body.dart';

class SignInSuccessScreen extends StatelessWidget {
  const SignInSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PopScope(
      canPop: false,
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
