import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class ShowMapButtonLoading extends StatelessWidget {
  const ShowMapButtonLoading({
    super.key,
    this.width = 110,
    this.height = 40,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(width),
      height: getProportionateScreenHeight(height),
      decoration: const BoxDecoration(
        color: kLoadingSkeletonColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}
