import 'package:flutter/material.dart';
import 'package:greenit_version1/components/logo/inline_logo.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/main_navigation.dart';
import 'package:greenit_version1/size_config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.height = 70,
  });

  final double height;

  @override
  Size get preferredSize =>
      Size(double.maxFinite, getProportionateScreenHeight(height));

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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ProfileAvatar(
                profileAvatarImage: 'assets/images/profile/user_profile.jpeg',
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const MainNavigation(overrideScreenIndex: 0),
                  ),
                ),
                child: const InlineLogo(width: 90),
              ),
              const SizedBox(width: 50),
              const SizedBox.square()
            ],
          ),
        ),
      ),
    );
  }
}
