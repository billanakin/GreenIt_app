import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class TextTitleLoading extends StatelessWidget {
  const TextTitleLoading({
    super.key,
    this.width = 100,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(20),
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
