import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';

class ViewPostButton extends StatelessWidget {
  const ViewPostButton({
    super.key,
    required this.press,
  });

  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Text(
        'View Post',
        textAlign: TextAlign.center,
        style: kCaptionTextStyle.copyWith(
          color: kPrimaryActiveColor,
          fontWeight: FontWeight.w400,
          height: 0,
          letterSpacing: 0.24,
        ),
      ),
    );
  }
}
