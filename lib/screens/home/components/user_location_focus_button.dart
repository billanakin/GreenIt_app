import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';

class UserLocationFocusButton extends StatelessWidget {
  const UserLocationFocusButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: const Icon(
        Icons.near_me_outlined,
        color: kPrimaryIconColor,
      ),
    );
  }
}
