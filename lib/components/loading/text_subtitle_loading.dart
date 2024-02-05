import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class TextSubtitleLoading extends StatelessWidget {
  const TextSubtitleLoading({
    super.key,
    this.width = 150,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(15),
      width: getProportionateScreenWidth(width),
      decoration: const BoxDecoration(
        color: kLoadingSkeletonColor,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );
  }
}
