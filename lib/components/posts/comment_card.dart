import 'package:flutter/material.dart';
import 'package:greenit_version1/components/options/card_options.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/comment.dart';
import 'package:greenit_version1/size_config.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({
    super.key,
    required this.comment,
  });

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: kSecondaryVerticalPadding,
        left: kDefaultHorizontalPadding,
        right: kDefaultHorizontalPadding,
      ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileAvatar.secondary(
                profile: comment.profile,
              ),
              const HorizontalSpacing(of: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      comment.profileName,
                      style: kPrimaryBodyTextStyle,
                    ),
                    Text(
                      'Replied to Post',
                      style: kSecondaryBodyTextStyle,
                    )
                  ],
                ),
              ),
              const Spacer(),
              const CardOptions(press: null),
            ],
          ),
          const VerticalSpacing(of: 10),
          Text(
            comment.comment,
            style: kPrimaryBodyTextStyle,
          ),
          const VerticalSpacing(of: 20),
          const Divider(),
        ],
      ),
    );
  }
}
