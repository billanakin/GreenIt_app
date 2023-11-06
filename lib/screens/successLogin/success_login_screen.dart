import 'package:flutter/material.dart';
import 'package:greenit_version1/screens/successLogin/components/body.dart';

class SuccessLoginScreen extends StatelessWidget {
  const SuccessLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const Scaffold(
        body: Body(),
      ),
    );
  }
}
