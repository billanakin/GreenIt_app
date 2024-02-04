import 'package:flutter/material.dart';
import 'package:greenit_app/components/app_bar/default_app_bar.dart';
import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/size_config.dart';

import 'package:greenit_app/models/profile.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Profile userProfile = Profile.fromUser(Current.user!);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: const SizedBox.shrink(),
            expandedHeight: getProportionateScreenHeight(70),
            floating: true,
            flexibleSpace: DefaultAppBar(
              userProfile: userProfile,
            ),
          ),
          //TODO
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     childCount: demoNotificationData.length,
          //     (context, index) =>
          //         NotificationCard(notification: demoNotificationData[index]),
          //   ),
          // ),
        ],
      ),
    );
  }
}
