import 'package:flutter/material.dart';
import 'package:greenit_app/components/loading/post_body_loading.dart';
import 'package:greenit_app/components/loading/post_header_loading.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class PostCardLoading extends StatelessWidget {
  const PostCardLoading({
    super.key,
    this.isBottomSheet = false,
  });

  final bool isBottomSheet;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultHorizontalPadding,
        right: kDefaultHorizontalPadding,
        top: kSecondaryVerticalPadding,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PostHeaderLoading(isBottomSheet: isBottomSheet),
          const VerticalSpacing(of: 20),
          const PostBodyLoading(),
          const VerticalSpacing(of: 20),
          const Divider(),
        ],
      ),
    );
  }
}
