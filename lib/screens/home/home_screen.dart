import 'package:flutter/material.dart';
import 'package:greenit_app/components/app_bar/home_page_app_bar.dart';
import 'package:greenit_app/components/buttons/add_new_post_button.dart';
import 'package:greenit_app/dummy_data/profile_data.dart';
import 'package:greenit_app/screens/home/components/body.dart';

import 'package:greenit_app/models/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Profile userProfile = DemoProfilesData.userProfile;
    return PopScope(
      canPop: false,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: HomePageAppBar(
            userProfile: userProfile,
          ),
          body: const Body(),
          floatingActionButton: const AddNewPostButton(),
        ),
      ),
    );
  }
}
