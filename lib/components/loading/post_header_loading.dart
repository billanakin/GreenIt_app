import 'package:flutter/material.dart';
import 'package:greenit_app/components/loading/profile_avatar_loading.dart';
import 'package:greenit_app/components/loading/show_map_button_loading.dart';
import 'package:greenit_app/components/loading/text_subtitle_loading.dart';
import 'package:greenit_app/components/loading/text_title_loading.dart';
import 'package:greenit_app/components/options/card_options.dart';
import 'package:greenit_app/size_config.dart';

class PostHeaderLoading extends StatelessWidget {
  const PostHeaderLoading({
    super.key,
    this.isBottomSheet = false,
  });

  final bool isBottomSheet;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileAvatarLoading(),
        const HorizontalSpacing(of: 10),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextTitleLoading(),
            VerticalSpacing(of: 5),
            TextSubtitleLoading(),
          ],
        ),
        const Spacer(),
        if (isBottomSheet)
          const ShowMapButtonLoading()
        else
          const CardOptions(press: null)
      ],
    );
  }
}
