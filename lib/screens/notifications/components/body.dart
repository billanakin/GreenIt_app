import 'package:flutter/material.dart';
import 'package:greenit_app/components/app_bar/default_app_bar.dart';
import 'package:greenit_app/dummy_data/notification_data.dart';
import 'package:greenit_app/dummy_data/profile_data.dart';
import 'package:greenit_app/models/notification.dart' as app_notif;
import 'package:greenit_app/screens/notifications/components/notification_card.dart';
import 'package:greenit_app/size_config.dart';

import 'package:greenit_app/models/profile.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<app_notif.Notification> demoNotificationData =
      DemoNotificationData.demoNotificationListData;

  Profile userProfile = DemoProfilesData.userProfile;

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
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: demoNotificationData.length,
              (context, index) =>
                  NotificationCard(notification: demoNotificationData[index]),
            ),
          ),
        ],
      ),
    );
  }
}
