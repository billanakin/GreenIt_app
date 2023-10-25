import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/notifcation.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatelessWidget {
  Body({super.key});

  final notificationData = demoNotificationData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: kDefaultPadding,
        ),
        child: ListView.builder(
          itemCount: notificationData.length,
          itemBuilder: ((context, index) => NotificationCard(
                notificationData: notificationData[index],
              )),
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.notificationData,
  });

  // ignore: prefer_typing_uninitialized_variables
  final notificationData;

  @override
  Widget build(BuildContext context) {
    Widget? notificationCardOutput;

    if (notificationData.notificationConstructorType ==
        NotificationConstructorType.recentlyFollowed) {
      notificationCardOutput = buildRecentlyFollowedTypeNotificationCard();
    } else if (notificationData.notificationConstructorType ==
        NotificationConstructorType.recentlyPosted) {
      notificationCardOutput = buildRecentlyPostedTypeNotificationCard();
    } else if (notificationData.notificationConstructorType ==
        NotificationConstructorType.recentlyLikedPost) {
      notificationCardOutput = buildRecentlyLikedPostTypeNotificationCard();
    }
    return notificationCardOutput!;
  }

  Container buildRecentlyLikedPostTypeNotificationCard() {
    return Container(
      margin: EdgeInsets.only(
        bottom: getProportionateScreenHeight(20),
      ),
      height: 100,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0x66868686),
          ),
        ),
      ),
      child: const Text('Recently Liked Post'),
    );
  }

  Container buildRecentlyPostedTypeNotificationCard() {
    return Container(
      margin: EdgeInsets.only(
        bottom: getProportionateScreenHeight(20),
      ),
      height: 100,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0x66868686),
          ),
        ),
      ),
      child: const Text('Recently Posted'),
    );
  }

  Container buildRecentlyFollowedTypeNotificationCard() {
    return Container(
      margin: EdgeInsets.only(
        bottom: getProportionateScreenHeight(20),
      ),
      height: 100,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0x66868686),
          ),
        ),
      ),
      child: const Text('Recently Followed'),
    );
  }
}
