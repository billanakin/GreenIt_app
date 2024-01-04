import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/size_config.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.press,
  });

  final String text;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(60),
      child: FilledButton(
        style: FilledButton.styleFrom(
          shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          backgroundColor: kPrimaryActiveColor,
        ),
        onPressed: press,
        child: Text(
          text,
          style: kPrimaryButtonTextStyle,
        ),
      ),
    );
  }
}
