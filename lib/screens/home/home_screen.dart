import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/home_page_app_bar.dart';
import 'package:greenit_version1/components/buttons/add_new_post_button.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/data/profile_data.dart';
import 'package:greenit_version1/screens/home/components/body.dart';
import 'package:greenit_version1/screens/newPost/new_post_screen.dart';
import 'package:greenit_version1/size_config.dart';

import '../../models/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Profile userProfile = DemoProfilesData.userProfile;
    return PopScope(
      onPopInvoked: (bool popped) async => false,
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
