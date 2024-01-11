import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.profileAvatarImage,
    this.radius = 22.0,
  });

  const ProfileAvatar.secondary({
    super.key,
    required this.profileAvatarImage,
    this.radius = 20.0,
  });

  final String profileAvatarImage;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(profileAvatarImage),
    );
  }
}
