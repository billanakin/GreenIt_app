import 'package:flutter/material.dart';
import 'package:greenit_app/screens/notifications/components/body.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PopScope(
      canPop: false,
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
