import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/size_config.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.text,
    required this.press,
    this.width = double.infinity,
    this.height = 60,
  });

  final String text;
  final void Function() press;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(height),
      width: width,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          primary: kPrimaryBorderColor,
          side: const BorderSide(
            width: 1,
            color: kPrimaryActiveColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: kPrimaryBodyTextStyle.copyWith(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w700,
            color: kPrimaryActiveColor,
            fontSize: getProportionateScreenHeight(12),
          ),
        ),
      ),
    );
  }
}
