import 'package:flutter/material.dart';
import 'package:greenit_version1/models/profile.dart';
import 'package:greenit_version1/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profileData = ModalRoute.of(context)!.settings.arguments as Profile;

    return Scaffold(
      body: Body(profile: profileData),
    );
  }
}
