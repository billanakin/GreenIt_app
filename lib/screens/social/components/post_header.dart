import 'package:flutter/material.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/components/text/inline_text_divider.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/size_config.dart';

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
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.profileName,
                style: kSecondaryBodyTextStyle.copyWith(
                  height: 0,
                ),
              ),
              const VerticalSpacing(of: 5),
              DefaultTextStyle(
                style: kCaptionTextStyle.copyWith(
                  height: 0,
                  fontWeight: FontWeight.w300,
                ),
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
                    if (postHeaderType == PostHeaderType.defaultType)
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
        const HorizontalSpacing(of: 10),
        suffix,
      ],
    );
  }
}
