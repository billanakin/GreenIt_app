import 'package:flutter/material.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/screens/profile/components/body.dart';

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

// TODO: Configure BAD State: NO Element Error, see output