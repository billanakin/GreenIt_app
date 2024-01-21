import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenit_app/size_config.dart';

class SocalButton extends StatelessWidget {
  const SocalButton({
    super.key,
    required this.icon,
    required this.press,
  });

  final String icon;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
      ),
      child: InkWell(
        onTap: () {},
        customBorder: const CircleBorder(),
        child: Ink(
          padding: EdgeInsets.all(getProportionateScreenWidth(12)),
          height: getProportionateScreenHeight(45),
          width: getProportionateScreenWidth(45),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF5F6F9),
          ),
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
