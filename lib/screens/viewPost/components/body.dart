import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/view_post_app_bar.dart';
import 'package:greenit_version1/components/posts/comment_card.dart';
import 'package:greenit_version1/components/posts/post_card/post_body.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/comment.dart';
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
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: postData.postCommentLength,
              (BuildContext context, int index) {
                Comment comment = postData.postComments![index];
                return CommentCard(comment: comment);
              },
            ),
          ),
        ],
      ),
    );
  }
}
