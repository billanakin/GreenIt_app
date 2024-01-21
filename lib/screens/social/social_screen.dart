import 'package:flutter/material.dart';
import 'package:greenit_app/components/buttons/add_new_post_button.dart';
import 'package:greenit_app/screens/social/components/body.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PopScope(
      canPop: false,
      child: Scaffold(
        body: Body(),
        floatingActionButton: AddNewPostButton(),
      ),
    );
  }
}
