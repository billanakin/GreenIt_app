import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

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
          foregroundColor: kPrimaryBorderColor, backgroundColor: Colors.white,
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
