import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';

class HeaderDescription extends StatelessWidget {
  const HeaderDescription({
    super.key,
    required this.title,
    required this.text,
  }) : isVerification = false;

  const HeaderDescription.verification({
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
          style: kH2TextStyle,
        ),
        Text(
          text,
          style: kPrimaryBodyTextStyle.copyWith(
            color: kSecondaryBodyTextColor,
          ),
          textAlign: TextAlign.center,
        ),
        if (isVerification)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This code will expire in ',
                style: kPrimaryBodyTextStyle.copyWith(
                  color: kSecondaryBodyTextColor,
                ),
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
