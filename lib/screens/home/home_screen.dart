import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/custom_app_bar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/home/components/body.dart';

import '../../models/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar.homePage(
            userProfile: Profile(
              id: 3,
              name: 'Lionel Messi',
              profileAvatar: 'assets/images/profile/user_profile.jpeg',
            ),
          ),
          body: const Body(),
          floatingActionButton: Container(
            height: 75,
            width: 75,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kPrimaryActiveColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 7,
                  spreadRadius: 0.8,
                  offset: const Offset(1.0, 3.0),
                ),
              ],
            ),
            child: const Center(
              child:
                  Icon(Icons.post_add_outlined, color: Colors.white, size: 35),
            ),
          ),
        ),
      ),
    );
  }
}
