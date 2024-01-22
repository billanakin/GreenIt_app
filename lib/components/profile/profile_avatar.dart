import 'package:flutter/material.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/screens/profile/profile_screen.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.profile,
    this.radius = 22.0,
    this.hasBorder = false,
  });

  const ProfileAvatar.secondary({
    super.key,
    required this.profile,
    this.radius = 20.0,
    this.hasBorder = false,
  });

  final double radius;
  final Profile profile;

  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    Widget profileAvatarOutput;

    if (hasBorder) {
      profileAvatarOutput = CircleAvatar(
        backgroundColor: Colors.white,
        radius: radius + 1,
        child: CircleAvatar(
          radius: radius,
          backgroundImage: AssetImage(profile.profileAvatar),
        ),
      );
    } else {
      profileAvatarOutput = CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(profile.profileAvatar),
      );
    }
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileScreen(),
            settings: RouteSettings(
              arguments: profile,
            ),
          ),
        );
      },
      child: profileAvatarOutput,
    );
  }
}
