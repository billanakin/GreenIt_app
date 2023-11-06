import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/custom_app_bar.dart';
import 'package:greenit_version1/data/notification_data.dart';
import 'package:greenit_version1/models/notification.dart' as AppNotif;
import 'package:greenit_version1/screens/notifications/components/notification_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<AppNotif.Notification> demoNotificationData =
      DemoNotificationData.demoNotificationListData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 70,
            floating: true,
            flexibleSpace: CustomAppBar(),
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
