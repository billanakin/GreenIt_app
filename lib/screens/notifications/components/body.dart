import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/notifcation.dart';

class Body extends StatelessWidget {
  Body({super.key});

  final notificationData = demoNotificationData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        child: ListView.builder(
          itemCount: notificationData.length,
          itemBuilder: ((context, index) => const Placeholder()),
        ),
      ),
    );
  }
}
