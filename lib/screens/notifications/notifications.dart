import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/custom_app_bar.dart';
import 'package:greenit_version1/components/logo/inline_logo.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/notifications/components/body.dart';
import 'package:greenit_version1/size_config.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Body(),
    );
  }
}
