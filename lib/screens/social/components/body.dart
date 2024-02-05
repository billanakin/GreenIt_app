import 'package:flutter/material.dart';
import 'package:greenit_app/apis/post_api.dart';
import 'package:greenit_app/components/app_bar/default_app_bar.dart';
import 'package:greenit_app/components/empty_state/empty_state.dart';
import 'package:greenit_app/components/error_state/error_state.dart';
import 'package:greenit_app/components/posts/post_card/post_card.dart';
import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/screens/social/loading/social_screen_loading.dart';
import 'package:greenit_app/size_config.dart';

import 'package:greenit_app/models/profile.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<List<Post>> _loadData() async {
    var apiResponse = await PostApi().fromFriends();
    if (apiResponse.success) {
      return apiResponse.data!.list;
    } else {
      return <Post>[];
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder<List<Post>>(
        future: _loadData(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            // return buildWidgets(context, snapshot.data!);

            // This for demo purposes only
            return ErrorState(
              appBar: DefaultAppBar(
                userProfile: Profile.fromUser(Current.user!),
              ),
            );
          } else {
            return const SocialScreenLoading();
          }

          // Error Condition:
          // return ErrorState(
          //   appBar: DefaultAppBar(
          //     userProfile: Profile.fromUser(Current.user!),
          //   ),
          // );

          // Empty Condition
          // return EmptyState(
          //   appBar: DefaultAppBar(
          //     userProfile: Profile.fromUser(Current.user!),
          //   ),
          // );
        },
      ),
    );
  }

  Widget buildWidgets(BuildContext context, List<Post> data) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: const SizedBox.shrink(),
            expandedHeight: getProportionateScreenHeight(70),
            floating: true,
            flexibleSpace: DefaultAppBar(
              userProfile: Profile.fromUser(Current.user!),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: data.length,
              (context, index) => PostCard(
                post: data[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
