import 'package:flutter/material.dart';

class InlineLogo extends StatelessWidget {
  const InlineLogo({
    super.key,
    required this.width,
    this.inlineLogoImage = 'assets/images/logo/Greenit_logo_inline.png',
  });

  final String inlineLogoImage;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: AspectRatio(
        aspectRatio: 1 / 2,
        child: Image.asset(inlineLogoImage),
      ),
    );
  }
}
