import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.profileAvatarImage,
    this.radius = 22.0,
    this.hasBorder = false,
    this.press,
  });

  const ProfileAvatar.secondary({
    super.key,
    required this.profileAvatarImage,
    this.radius = 20.0,
    this.hasBorder = false,
    this.press,
  });

  final String profileAvatarImage;
  final double radius;

  final void Function()? press;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    Widget profileAvatarOutput;

    if (hasBorder) {
      profileAvatarOutput = GestureDetector(
        onTap: press,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: radius + 1,
          child: CircleAvatar(
            radius: radius,
            backgroundImage: AssetImage(profileAvatarImage),
          ),
        ),
      );
    } else {
      profileAvatarOutput = GestureDetector(
        onTap: press,
        child: CircleAvatar(
          radius: radius,
          backgroundImage: AssetImage(profileAvatarImage),
        ),
      );
    }
    return profileAvatarOutput;
  }
}
