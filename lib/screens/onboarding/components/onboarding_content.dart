import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/size_config.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.index,
    required this.title,
    required this.text,
    this.image,
  });

  final int index;
  final String? title;
  final String? text;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (index == 0)
          Text.rich(
            TextSpan(
              text: 'Welcome to ',
              style: kHeadlineTextStyle,
              children: <TextSpan>[
                TextSpan(
                  text: 'Green',
                  style: kHeadlineTextStyle.copyWith(
                    color: kPrimaryDarkColor.withOpacity(0.8),
                  ),
                ),
                TextSpan(
                  text: 'It',
                  style:
                      kHeadlineTextStyle.copyWith(color: kPrimaryActiveColor),
                ),
              ],
            ),
          ),
        if (index > 0)
          Text(
            title!,
            textAlign: TextAlign.center,
            style: kHeadlineTextStyle,
          ),
        const VerticalSpacing(of: 5),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: const TextStyle(color: kBodyTextColor),
        ),
        const VerticalSpacing(),
        SizedBox(
          width: getProportionateScreenWidth(350),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              image!,
            ),
          ),
        ),
      ],
    );
  }
}
