import 'package:flutter/material.dart';
import 'package:greenit_app/size_config.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Image.asset(
        'assets/images/logo/Greenit_launcher_icon.png',
      ),
    );
  }
}
