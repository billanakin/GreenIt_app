import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';

class ViewPostButton extends StatelessWidget {
  const ViewPostButton({
    super.key,
    required this.press,
  });

  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    // TODO: Convert to TextButton
    return GestureDetector(
      onTap: press,
      child: Text(
        'View Post',
        textAlign: TextAlign.center,
        style: kTextButtonTextStyle,
      ),
    );
  }
}
