import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/utility_app_bar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/newPost/components/body.dart';

class NewPostScreen extends StatelessWidget {
  const NewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UtilityAppBar(
        leadingText: 'Cancel',
        title: 'New Post',
        actionButtonText: 'Next',
        actionButtonPress: () {},
      ),
      body: const Body(),
    );
  }
}
