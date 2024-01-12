import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.profileAvatarImage,
    this.radius = 22.0,
    this.press,
  });

  const ProfileAvatar.secondary({
    super.key,
    required this.profileAvatarImage,
    this.radius = 20.0,
    this.press,
  });

  final String profileAvatarImage;
  final double radius;

  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(profileAvatarImage),
      ),
    );
  }
}
