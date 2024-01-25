import 'package:flutter/material.dart';
import 'package:greenit_app/components/options/card_options.dart';
import 'package:greenit_app/components/posts/post_card/post_body.dart';
import 'package:greenit_app/components/posts/post_card/post_header.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/screens/view_post/view_post_screen.dart';
import 'package:greenit_app/size_config.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.post,
    this.isViewPost = false,
    this.isBottomSheet = false,
    this.isProfile = false,
  });

  final Post post;
  final bool isViewPost;
  final bool isBottomSheet;
  final bool isProfile;

  @override
  Widget build(BuildContext context) {
    Widget? postCardOutput;

    if (post.postConstructorType == PostConstructorType.defaultPost) {
      postCardOutput = buildDefaultPostCard(post);
    } else if (post.postConstructorType == PostConstructorType.sharedPost) {
      postCardOutput = buildSharedPostCard(post);
    }

    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ViewPostScreen(),
          settings: RouteSettings(arguments: post),
        ),
      ),
      child: postCardOutput!,
    );
  }

  Container buildSharedPostCard(Post post) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultHorizontalPadding,
        right: kDefaultHorizontalPadding,
        top: kSecondaryVerticalPadding,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PostHeader.shared(
              post: post,
              suffix: const CardOptions(press: null),
              isBottomSheet: isBottomSheet,
              isProfile: isProfile,
            ),
            const VerticalSpacing(of: 10),
            PostBody.shared(post: post),
            const VerticalSpacing(of: 20),
            const Divider(),
          ],
        ),
      ),
    );
  }

  Container buildDefaultPostCard(Post post) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultHorizontalPadding,
        right: kDefaultHorizontalPadding,
        top: kSecondaryVerticalPadding,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PostHeader(
              post: post,
              suffix: const CardOptions(press: null),
              isBottomSheet: isBottomSheet,
              isProfile: isProfile,
            ),
            const VerticalSpacing(of: 20),
            PostBody(post: post),
            const VerticalSpacing(of: 20),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
