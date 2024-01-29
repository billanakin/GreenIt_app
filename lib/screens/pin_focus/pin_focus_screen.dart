import 'package:flutter/material.dart';
import 'package:greenit_app/components/app_bar/home_page_app_bar.dart';
import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/models/post.dart';

import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/screens/pin_focus/components/body.dart';

class PinFocusScreen extends StatelessWidget {
  const PinFocusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Profile userProfile = Profile.fromUser(Current.user!);
    final postData = ModalRoute.of(context)!.settings.arguments as Post;

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: HomePageAppBar(
          userProfile: userProfile,
          isPinFocus: true,
        ),
        body: Body(post: postData),
      ),
    );
  }
}
