import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class SearchBarLoading extends StatelessWidget {
  const SearchBarLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: getProportionateScreenHeight(40),
        decoration: const BoxDecoration(
          color: kLoadingSkeletonColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
