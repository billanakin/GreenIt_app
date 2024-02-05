import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class ProfileAvatarLoading extends StatelessWidget {
  const ProfileAvatarLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kLoadingSkeletonColor,
      ),
    );
  }
}
