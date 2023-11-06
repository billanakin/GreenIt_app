import 'package:flutter/material.dart';
import 'package:greenit_version1/screens/notifications/components/body.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const Scaffold(
        body: Body(),
      ),
    );
  }
}
