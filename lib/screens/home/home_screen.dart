import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/home_page_app_bar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/data/profile_data.dart';
import 'package:greenit_version1/screens/home/components/body.dart';

import '../../models/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Profile userProfile = DemoProfilesData.userProfile;

    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: HomePageAppBar(
            userProfile: userProfile,
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
