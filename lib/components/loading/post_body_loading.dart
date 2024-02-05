import 'package:flutter/material.dart';
import 'package:greenit_app/components/loading/post_interaction_bar_loading.dart';
import 'package:greenit_app/components/loading/text_paragraph_loading.dart';
import 'package:greenit_app/components/loading/text_title_loading.dart';
import 'package:greenit_app/components/options/card_options.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class PostBodyLoading extends StatelessWidget {
  const PostBodyLoading({
    super.key,
    this.isViewPost = false,
    this.isBottomSheet = false,
  });

  final bool isViewPost;
  final bool isBottomSheet;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: (isViewPost || isBottomSheet)
          ? EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding)
          : EdgeInsets.only(left: getProportionateScreenWidth(50)),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextTitleLoading(width: 165),
          const VerticalSpacing(of: 10),
          const TextParagraphLoading(),
          const VerticalSpacing(of: 10),
          buildImagesLoading(),
          const VerticalSpacing(of: 20),
          if (isViewPost || isBottomSheet)
            const PostInteractionBarLoading(
              suffix: CardOptions(press: null),
            ),
          if (!(isViewPost || isBottomSheet)) const PostInteractionBarLoading(),
        ],
      ),
    );
  }

  SingleChildScrollView buildImagesLoading() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            4,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: getProportionateScreenHeight(180),
                  child: AspectRatio(
                    aspectRatio: 4 / 5,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: kLoadingSkeletonColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
