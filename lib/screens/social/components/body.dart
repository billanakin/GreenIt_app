import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/default_app_bar.dart';
<<<<<<< HEAD
=======
import 'package:greenit_version1/components/posts/post_card/post_card.dart';
>>>>>>> main
import 'package:greenit_version1/data/post_data.dart';
import 'package:greenit_version1/models/post.dart';

import '../../../models/profile.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

List<Post> demoPostData = DemoPostData.demoPostListData;

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: const SizedBox.shrink(),
            expandedHeight: 70,
            floating: true,
            flexibleSpace: DefaultAppBar(
              userProfile: Profile(
                id: 3,
                name: 'Lionel Messi',
                profileAvatar: 'assets/images/profile/user_profile.jpeg',
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: demoPostData.length,
              (context, index) => InkWell(
                onTap: () {},
                child: PostCard(
                  post: demoPostData[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
