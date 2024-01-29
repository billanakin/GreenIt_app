import 'package:flutter/material.dart';
import 'package:greenit_app/components/sheets/comment/comment_post_sheet.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/size_config.dart';

class PostInteractionBar extends StatefulWidget {
  const PostInteractionBar({
    super.key,
    required this.post,
    this.suffix,
  });

  final Widget? suffix;
  final Post post;

  @override
  State<PostInteractionBar> createState() => _PostInteractionBarState();
}

class _PostInteractionBarState extends State<PostInteractionBar>
    with TickerProviderStateMixin {
  bool isLiked = false;

  late AnimationController modalSheetcontroller;

  @override
  initState() {
    super.initState();
    modalSheetcontroller = BottomSheet.createAnimationController(this);
    modalSheetcontroller.duration = kDefaultDuration;
    modalSheetcontroller.reverseDuration = kDefaultDuration;
    modalSheetcontroller.drive(CurveTween(curve: Curves.easeIn));
  }

  @override
  void dispose() {
    modalSheetcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            commentModalBottomSheet(context, widget.post, modalSheetcontroller);
          },
          child: Row(
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
            ],
          ),
        ),
        const HorizontalSpacing(of: 25),
        // if (!(widget.post.postConstructorType ==
        //     PostConstructorType.sharedPost))
        //   Row(
        //     children: [
        //       GestureDetector(
        //         onTap: () {
        //           quoteModalBottomSheet(
        //               context, widget.post, modalSheetcontroller);
        //         },
        //         child: Row(
        //           children: [
        //             Icon(
        //               Icons.share_outlined,
        //               size: 22,
        //               color: Colors.black.withOpacity(0.6),
        //             ),
        //             const HorizontalSpacing(of: 5),
        //             Text(
        //               '2.3k', // TODO: Change to dynamic soon with  Model
        //               style: kSecondaryBodyTextStyle.copyWith(
        //                 color: kPrimaryBodyTextColor,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       const HorizontalSpacing(of: 25),
        //     ],
        //   ),
        GestureDetector(
          onTap: () {
            setState(() {
              isLiked =
                  !isLiked; // Update Post class not just postInteractionWidget
            });
          },
          child: Row(
            children: [
              Icon(
                (isLiked)
                    ? Icons.favorite_rounded
                    : Icons.favorite_border_rounded,
                size: 22,
                color: (isLiked) ? Colors.red : Colors.black.withOpacity(0.6),
              ),
              const HorizontalSpacing(of: 5),
              Text(
                '25.5k', // TODO: Change to dynamic soon with  Model
                style: kSecondaryBodyTextStyle.copyWith(
                  color: kPrimaryBodyTextColor,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        widget.suffix ?? const SizedBox.shrink(),
      ],
    );
  }
}
