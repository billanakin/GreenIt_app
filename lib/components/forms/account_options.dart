import 'package:flutter/material.dart';
import 'package:greenit_app/components/buttons/socal_button.dart';

class AccountOptions extends StatelessWidget {
  const AccountOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocalButton(
          icon: 'assets/icons/google-icon.svg',
          press: () {},
        ),
        SocalButton(
          icon: 'assets/icons/facebook-2.svg',
          press: () {},
        ),
        SocalButton(
          icon: 'assets/icons/twitter.svg',
          press: () {},
        ),
      ],
    );
  }
}
