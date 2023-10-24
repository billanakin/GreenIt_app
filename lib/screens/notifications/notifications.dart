import 'package:flutter/material.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/notifications/components/body.dart';
import 'package:greenit_version1/size_config.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Body(),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  // Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  Size get preferredSize => Size.fromHeight(getProportionateScreenHeight(70));

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.green.shade400,
          ),
          child: const Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileAvatar(
                  profileAvatarImage: 'assets/images/user_profile.jpeg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
