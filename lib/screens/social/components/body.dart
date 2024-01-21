import 'package:flutter/material.dart';
import 'package:greenit_app/components/appBar/default_app_bar.dart';
import 'package:greenit_app/components/posts/post_card/post_card.dart';
import 'package:greenit_app/dummy_data/post_data.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/models/profile.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Post> demoPostData = DemoPostData.demoPostListData;

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
              (context, index) => PostCard(
                post: demoPostData[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
