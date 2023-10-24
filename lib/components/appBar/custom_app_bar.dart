import 'package:flutter/material.dart';
import 'package:greenit_version1/components/logo/inline_logo.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.height = 70,
  });

  final double height;

  @override
  Size get preferredSize => Size(double.maxFinite, height);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: SafeArea(
        child: Container(
          height: height,
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: 10,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Color(0x66868686),
              ),
            ),
          ),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProfileAvatar(
                profileAvatarImage: 'assets/images/user_profile.jpeg',
              ),
              SizedBox(width: 10),
              InlineLogo(width: 90),
              SizedBox(width: 50),
              SizedBox.square()
            ],
          ),
        ),
      ),
    );
  }
}
