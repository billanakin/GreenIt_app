import 'package:flutter/material.dart';
import 'package:greenit_version1/components/buttons/add_new_post_button.dart';
import 'package:greenit_version1/screens/social/components/body.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (bool popped) async => false,
      child: const Scaffold(
        body: Body(),
        floatingActionButton: AddNewPostButton(),
      ),
    );
  }
}
