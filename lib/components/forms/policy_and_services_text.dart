import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';

class PolicyAndServicesText extends StatelessWidget {
  const PolicyAndServicesText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            text: "By clicking \"Register Account\", you agree to\n    our ",
            style: kPrimaryBodyTextStyle,
            children: <TextSpan>[
              TextSpan(
                text: 'Terms of Service',
                style: kPrimaryBodyTextStyle.copyWith(
                  color: Colors.blue,
                ),
              ),
              TextSpan(
                text: ' and ',
                style: kPrimaryBodyTextStyle,
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: kPrimaryBodyTextStyle.copyWith(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
