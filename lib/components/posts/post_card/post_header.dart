import 'package:flutter/material.dart';
import 'package:greenit_app/components/profile/profile_avatar.dart';
import 'package:greenit_app/components/text/inline_text_divider.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/size_config.dart';

enum PostHeaderType {
  defaultType,
  sharedType,
}

class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
    required this.post,
    required this.suffix,
  }) : postHeaderType = PostHeaderType.defaultType;

  const PostHeader.shared({
    super.key,
    required this.post,
    required this.suffix,
  }) : postHeaderType = PostHeaderType.sharedType;

  final Post post;
  final Widget suffix;

  final PostHeaderType postHeaderType;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileAvatar.secondary(profileAvatarImage: post.profileImage),
        const HorizontalSpacing(of: 10),
        PostHeaderInfo(
          post: post,
        ),
        const Spacer(),
        suffix,
      ],
    );
  }
}

class PostHeaderInfo extends StatelessWidget {
  const PostHeaderInfo({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Flexible(
        fit: FlexFit.loose,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.profileName,
              style: kPrimaryBodyTextStyle,
            ),
            DefaultTextStyle(
              style: kSecondaryBodyTextStyle,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(post.time.toString()),
                  const HorizontalSpacing(of: 5),
                  const InlineTextDivider(),
                  const HorizontalSpacing(of: 5),
                  Text(post.date.toString()),
                  const HorizontalSpacing(of: 5),
                  if (post.postType == PostConstructorType.defaultPost)
                    Row(
                      children: [
                        const InlineTextDivider(),
                        const HorizontalSpacing(of: 5),
                        Text(
                            '${post.locationRange.toString()} km') // TODO: Format location Range
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
