import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/size_config.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
    required this.title,
    required this.text,
  }) : isVerification = false;

  const WelcomeText.verification({
    super.key,
    required this.title,
    required this.text,
  }) : isVerification = true;

  final bool isVerification;

  final String title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          // style: TextStyle(
          //   color: Colors.black,
          //   fontSize: getProportionateScreenWidth(30),
          //   fontWeight: FontWeight.bold,
          // ),
          style: kH2TextStyle.copyWith(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          text,
          style: kSecondaryBodyTextStyle.copyWith(color: kBodyTextColor),
          textAlign: TextAlign.center,
        ),
        if (isVerification)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This code will expire in ',
                style: kSecondaryBodyTextStyle.copyWith(color: kBodyTextColor),
              ),
              TweenAnimationBuilder(
                tween: Tween(begin: 30.0, end: 0.0),
                duration: const Duration(seconds: 30),
                builder: (context, value, child) => Text(
                  "00.${value.toInt()}",
                  style: kSecondaryBodyTextStyle.copyWith(
                    color: kPrimaryActiveColor,
                  ),
                ),
                onEnd: () {},
              ),
            ],
          ),
      ],
    );
  }
}
