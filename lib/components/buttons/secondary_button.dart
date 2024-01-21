import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(110),
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
        onPressed: () {},
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
