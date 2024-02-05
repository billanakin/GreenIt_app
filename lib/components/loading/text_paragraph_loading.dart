import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class TextParagraphLoading extends StatelessWidget {
  const TextParagraphLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          5,
          (index) => Container(
            margin: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
            height: getProportionateScreenHeight(10),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kLoadingSkeletonColor,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
