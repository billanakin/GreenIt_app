import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/size_config.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.width = double.infinity,
    this.height = 60,
    required this.text,
    required this.press,
  });

  final String text;
  final double width;
  final double height;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: getProportionateScreenHeight(height),
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
