import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/view_post_app_bar.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/models/profile.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final postData = ModalRoute.of(context)!.settings.arguments as Post;

    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: const SizedBox.shrink(),
            expandedHeight: 70,
            floating: true,
            flexibleSpace: ViewPostAppBar(
              userProfile: Profile(
                id: 3,
                name: 'Lionel Messi',
                profileAvatar: 'assets/images/profile/user_profile.jpeg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
