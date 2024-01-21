import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.isActive,
    this.activeColor = kPrimaryActiveColor,
    this.inActiveColor = const Color(0xFF868686),
  });

  final bool isActive;
  final Color activeColor, inActiveColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kDefaultDuration,
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(3)),
      height: 5,
      width: isActive ? 15 : 8,
      decoration: BoxDecoration(
        color: isActive ? activeColor : inActiveColor.withOpacity(0.25),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}
