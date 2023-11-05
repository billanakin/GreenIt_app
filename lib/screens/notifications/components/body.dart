import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
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
      child: ListView.builder(
        itemCount: demoNotificationData.length,
        itemBuilder: ((context, index) => InkWell(
              onTap: () {},
              child: NotificationCard(
                notificationData: demoNotificationData[index],
              ),
            )),
      ),
    );
  }
}
