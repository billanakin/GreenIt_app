import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/size_config.dart';

class PostInteractionBar extends StatelessWidget {
  const PostInteractionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.mode_comment_outlined,
          size: 22,
          color: Colors.black.withOpacity(0.6),
        ),
        const HorizontalSpacing(of: 5),
        Text(
          '15.3k', // TODO: Change to dynamic soon with  Model
          style: kSecondaryBodyTextStyle.copyWith(
            color: kPrimaryBodyTextColor,
          ),
        ),
        const HorizontalSpacing(of: 25),
        Icon(
          Icons.share_outlined,
          size: 22,
          color: Colors.black.withOpacity(0.6),
        ),
        const HorizontalSpacing(of: 5),
        Text(
          '2.3k', // TODO: Change to dynamic soon with  Model
          style: kSecondaryBodyTextStyle.copyWith(
            color: kPrimaryBodyTextColor,
          ),
        ),
        const HorizontalSpacing(of: 25),
        Icon(
          Icons.favorite_border_rounded,
          size: 22,
          color: Colors.black.withOpacity(0.6),
        ),
        const HorizontalSpacing(of: 5),
        Text(
          '25.5k', // TODO: Change to dynamic soon with  Model
          style: kSecondaryBodyTextStyle.copyWith(
            color: kPrimaryBodyTextColor,
          ),
        ),
      ],
    );
  }
}
