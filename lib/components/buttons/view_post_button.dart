import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';

class PrimaryTextButton extends StatelessWidget {
  const PrimaryTextButton({
    super.key,
    required this.press,
    required this.text,
  });

  final void Function() press;
  final String text;

  @override
  Widget build(BuildContext context) {
    // TODO: Convert to TextButton
    return GestureDetector(
      onTap: press,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: kTextButtonTextStyle,
      ),
    );
  }
}
