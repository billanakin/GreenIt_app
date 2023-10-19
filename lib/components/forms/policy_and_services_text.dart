import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/size_config.dart';

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
            style: kBodyTextStyle.copyWith(
              fontSize: getProportionateScreenWidth(14),
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Terms of Service',
                style: kBodyTextStyle.copyWith(
                  color: Colors.blue,
                  fontSize: getProportionateScreenWidth(14),
                  // decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: ' and ',
                style: kBodyTextStyle.copyWith(
                  fontSize: getProportionateScreenWidth(14),
                ),
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: kBodyTextStyle.copyWith(
                  color: Colors.blue,
                  fontSize: getProportionateScreenWidth(14),
                  // decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
