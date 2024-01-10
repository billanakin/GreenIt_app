import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/view_post_app_bar.dart';
import 'package:greenit_version1/components/posts/post_card/post_body.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/post.dart';

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
              viewedPost: postData,
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              vertical: kSecondaryVerticalPadding,
            ),
            sliver: SliverToBoxAdapter(
              child: (postData.postType == PostConstructorType.defaultPost)
                  ? PostBody(
                      isViewPost: true,
                      post: postData,
                    )
                  : PostBody.shared(
                      isViewPost: true,
                      post: postData,
                    ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(height: 1),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              vertical: kSecondaryVerticalPadding,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: index % 2 == 0 ? Colors.green : Colors.greenAccent,
                      height: 80,
                      alignment: Alignment.center,
                      child: Text(
                        "Item $index",
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  );
                },
                // 40 list items
                childCount: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
