import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class PostInteractionBarLoading extends StatelessWidget {
  const PostInteractionBarLoading({
    super.key,
    this.suffix,
  });

  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              height: getProportionateScreenHeight(20),
              width: getProportionateScreenWidth(20),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kLoadingSkeletonColor,
              ),
            ),
            const HorizontalSpacing(of: 5),
            Container(
              height: getProportionateScreenHeight(10),
              width: getProportionateScreenWidth(35),
              decoration: const BoxDecoration(
                color: kLoadingSkeletonColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ],
        ),
        const HorizontalSpacing(of: 25),
        Row(
          children: [
            Container(
              height: getProportionateScreenHeight(20),
              width: getProportionateScreenWidth(20),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kLoadingSkeletonColor,
              ),
            ),
            const HorizontalSpacing(of: 5),
            Container(
              height: getProportionateScreenHeight(10),
              width: getProportionateScreenWidth(35),
              decoration: const BoxDecoration(
                color: kLoadingSkeletonColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ],
        ),
        const HorizontalSpacing(of: 25),
        Row(
          children: [
            Container(
              height: getProportionateScreenHeight(20),
              width: getProportionateScreenWidth(20),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kLoadingSkeletonColor,
              ),
            ),
            const HorizontalSpacing(of: 5),
            Container(
              height: getProportionateScreenHeight(10),
              width: getProportionateScreenWidth(35),
              decoration: const BoxDecoration(
                color: kLoadingSkeletonColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        suffix ?? const SizedBox.shrink(),
      ],
    );
  }
}
