import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/signUp/sign_up_screen.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: kPrimaryBodyTextStyle,
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignUpScreen(),
            ),
          ),
          child: Text(
            'Sign Up',
            style: kPrimaryBodyTextStyle.copyWith(color: kPrimaryActiveColor),
          ),
        )
      ],
    );
  }
}
