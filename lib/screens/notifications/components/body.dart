import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/default_app_bar.dart';
import 'package:greenit_version1/data/notification_data.dart';
import 'package:greenit_version1/data/profile_data.dart';
import 'package:greenit_version1/models/notification.dart' as AppNotif;
import 'package:greenit_version1/screens/notifications/components/notification_card.dart';
import 'package:greenit_version1/size_config.dart';

import '../../../models/profile.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<AppNotif.Notification> demoNotificationData =
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
              (context, index) => InkWell(
                onTap: () {},
                child:
                    NotificationCard(notification: demoNotificationData[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
