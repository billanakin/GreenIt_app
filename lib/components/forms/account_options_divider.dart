import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';

class AccountOptionsDivider extends StatelessWidget {
  const AccountOptionsDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: kPrimaryBorderColor,
            indent: 10,
            endIndent: 10,
          ),
        ),
        Text('OR'),
        Expanded(
          child: Divider(
            color: kPrimaryBorderColor,
            endIndent: 10,
            indent: 10,
          ),
        ),
      ],
    );
  }
}
