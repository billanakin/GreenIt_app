import 'package:flutter/material.dart';
import 'package:greenit_app/components/app_bar/default_app_bar.dart';
import 'package:greenit_app/components/empty_state/empty_state.dart';
import 'package:greenit_app/components/error_state/error_state.dart';
import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/screens/notifications/loading/notifications_screen_loading.dart';
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
    // Loading Condition
    // return const NotificationsScreenLoading();

    // Error Condition
    // return ErrorState(
    //   appBar: DefaultAppBar(
    //     userProfile: Profile.fromUser(Current.user!),
    //   ),
    // );

    // Empty Condition
    return EmptyState(
      appBar: DefaultAppBar(
        userProfile: Profile.fromUser(Current.user!),
      ),
      isNotification: true,
    );

    // TODO: buildWidget notifs
    // return SafeArea(
    //   child: CustomScrollView(
    //     slivers: <Widget>[
    //       SliverAppBar(
    //         leading: const SizedBox.shrink(),
    //         expandedHeight: getProportionateScreenHeight(70),
    //         floating: true,
    //         flexibleSpace: DefaultAppBar(
    //           userProfile: userProfile,
    //         ),
    //       ),
    //       // SliverList(
    //       //   delegate: SliverChildBuilderDelegate(
    //       //     childCount: demoNotificationData.length,
    //       //     (context, index) =>
    //       //         NotificationCard(notification: demoNotificationData[index]),
    //       //   ),
    //       // ),
    //     ],
    //   ),
    // );
  }
}
