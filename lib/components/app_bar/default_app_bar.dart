import 'package:flutter/material.dart';
import 'package:greenit_app/components/logo/inline_logo.dart';
import 'package:greenit_app/components/profile/profile_avatar.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/main_navigation.dart';
import 'package:greenit_app/size_config.dart';

import 'package:greenit_app/models/profile.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    this.height = 70.0001,
    required this.userProfile,
  });

  final double height;
  final Profile userProfile;

  @override
  Size get preferredSize =>
      Size(double.maxFinite, getProportionateScreenHeight(height));

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: SafeArea(
        child: Container(
          height: getProportionateScreenHeight(70),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultHorizontalPadding,
            vertical: kDefaultVerticalPadding,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: kPrimaryBorderColor,
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProfileAvatar(
                profile: userProfile,
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
