import 'package:flutter/material.dart';
import 'package:greenit_app/components/buttons/secondary_button.dart';
import 'package:greenit_app/components/options/card_options.dart';
import 'package:greenit_app/components/profile/profile_avatar.dart';
import 'package:greenit_app/components/text/inline_text_divider.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/screens/pin_focus/pin_focus_screen.dart';
import 'package:greenit_app/size_config.dart';

enum PostHeaderType {
  defaultType,
  sharedType,
}

class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
    required this.post,
    this.isBottomSheet = false,
    this.isProfile = false,
  }) : postHeaderType = PostHeaderType.defaultType;

  const PostHeader.shared({
    super.key,
    required this.post,
    this.isBottomSheet = false,
    this.isProfile = false,
  }) : postHeaderType = PostHeaderType.sharedType;

  final Post post;

  final PostHeaderType postHeaderType;
  final bool isBottomSheet;
  final bool isProfile;

  @override
  Widget build(BuildContext context) {
    bool isrouteDisabled = isProfile;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileAvatar.secondary(
          profile: Profile.fromUser(post.author),
          isrouteDisabled: isrouteDisabled,
        ),
        const HorizontalSpacing(of: 10),
        postHeaderInfo(),
        const Spacer(),
        if (isBottomSheet)
          SecondaryButton(
            text: 'Show Map',
            press: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PinFocusScreen(),
                settings: RouteSettings(arguments: post),
              ),
            ),
            width: getProportionateScreenWidth(110),
            height: 40,
          )
        else
          const CardOptions(press: null),
      ],
    );
  }

  SingleChildScrollView postHeaderInfo() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Flexible(
        fit: FlexFit.loose,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.author.name,
              style: kPrimaryBodyTextStyle,
            ),
            DefaultTextStyle(
              style: kSecondaryBodyTextStyle,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(post.formattedTime),
                  const HorizontalSpacing(of: 5),
                  const InlineTextDivider(),
                  const HorizontalSpacing(of: 5),
                  Text(post.formattedDate),
                  const HorizontalSpacing(of: 5),
                  const Visibility(
                    visible: false,
                    child: Row(
                      children: [
                        InlineTextDivider(),
                        HorizontalSpacing(of: 5),
                        Text('5 km todo') // TODO: Format location Range
                      ],
                    ),
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
