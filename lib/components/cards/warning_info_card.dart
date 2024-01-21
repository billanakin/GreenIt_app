import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class WarningInfoCard extends StatelessWidget {
  const WarningInfoCard({
    super.key,
    required this.info,
  });

  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultHorizontalPadding,
        vertical: kSecondaryVerticalPadding,
      ),
      decoration: ShapeDecoration(
        color: const Color(0x26868686),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.error_rounded,
            color: Color(0xFF868686),
          ),
          const HorizontalSpacing(of: 10),
          Expanded(
            child: Text(
              info,
              style: kSecondaryBodyTextStyle.copyWith(
                color: kPrimaryBodyTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
