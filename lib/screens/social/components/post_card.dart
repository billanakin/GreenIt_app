import 'package:flutter/material.dart';
import 'package:greenit_version1/components/options/card_options.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/screens/social/components/post_body.dart';
import 'package:greenit_version1/screens/social/components/post_header.dart';
import 'package:greenit_version1/size_config.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    Widget? postCardOutput;

    if (post.postConstructorType == PostConstructorType.defaultPost) {
      postCardOutput = buildDefaultPostCard(post);
    } else if (post.postConstructorType == PostConstructorType.sharedPost) {
      postCardOutput = buildSharedPostCard(post);
    }

    return postCardOutput!;
  }

  Container buildSharedPostCard(Post post) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PostHeader.shared(
            post: post,
            suffix: const CardOptions(press: null),
          ),
          const VerticalSpacing(of: 20),
          PostBody.shared(post: post),
          const VerticalSpacing(of: 20),
          const Divider(),
        ],
      ),
    );
  }

  Container buildDefaultPostCard(Post post) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PostHeader(
            post: post,
            suffix: const CardOptions(press: null),
          ),
          const VerticalSpacing(of: 20),
          PostBody(post: post),
          const VerticalSpacing(of: 20),
          const Divider(),
        ],
      ),
    );
  }
}
