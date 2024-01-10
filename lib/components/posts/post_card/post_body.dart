import 'package:flutter/material.dart';
import 'package:greenit_version1/components/options/card_options.dart';
import 'package:greenit_version1/components/posts/post_card/post_header.dart';
import 'package:greenit_version1/components/posts/post_interaction_bar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/size_config.dart';

enum PostBodyType {
  defaultType,
  sharedType,
}

class PostBody extends StatelessWidget {
  const PostBody({
    super.key,
    this.isViewPost = false,
    this.isBottomSheet = false,
    required this.post,
  }) : postBodyType = PostBodyType.defaultType;

  const PostBody.shared({
    super.key,
    this.isViewPost = false,
    this.isBottomSheet = false,
    required this.post,
  }) : postBodyType = PostBodyType.sharedType;

  final bool isViewPost;
  final bool isBottomSheet;

  final Post post;
  final PostBodyType postBodyType;

  @override
  Widget build(BuildContext context) {
    Widget? postBodyOutput;

    if (postBodyType == PostBodyType.defaultType) {
      postBodyOutput = buildPostBodyDefaultType(
        post,
        isViewPost,
        isBottomSheet,
      );
    } else if (postBodyType == PostBodyType.sharedType) {
      postBodyOutput = buildPostBodySharedType(
        post,
        isViewPost,
        isBottomSheet,
      );
    }
    return postBodyOutput!;
  }
}

Container buildPostBodyDefaultType(
    Post post, bool isViewPost, bool isBottomSheet) {
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
        Text(
          post.messageTitle!,
          style: kPrimaryBodyTextStyle.copyWith(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w600,
          ),
        ),
        const VerticalSpacing(of: 10),
        Text(
          post.messageDescription,
          style: kPrimaryBodyTextStyle,
        ),
        const VerticalSpacing(of: 10),
        if (post.postImagesLength == 1)
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                post.postImages![0],
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        if (post.postImagesLength > 1)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  post.postImagesLength,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        height: getProportionateScreenHeight(180),
                        child: AspectRatio(
                          aspectRatio: 4 / 5,
                          child: Image.asset(
                            post.postImages![index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        const VerticalSpacing(of: 20),
        if (isViewPost || isBottomSheet)
          const PostInteractionBar(suffix: CardOptions(press: null)),
        if (!(isViewPost || isBottomSheet)) const PostInteractionBar(),
      ],
    ),
  );
}

Container buildPostBodySharedType(
  Post post,
  bool isViewPost,
  bool isBottomSheet,
) {
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
        Text(
          post.messageDescription,
          style: kPrimaryBodyTextStyle,
        ),
        const VerticalSpacing(of: 10),
        Container(
          width: double.maxFinite,
          height: getProportionateScreenHeight(200),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: const Color(0xFF868686),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PostHeader(
                post: post.sharedPost!,
                suffix: const CardOptions(press: null),
              ),
              const VerticalSpacing(of: 20),
              Container(
                padding: const EdgeInsets.only(left: 45),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.sharedPost!.messageTitle!,
                      style: kPrimaryBodyTextStyle.copyWith(
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const VerticalSpacing(of: 10),
                    Text(
                      post.sharedPost!.messageDescription,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: kPrimaryBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const VerticalSpacing(of: 20),
        if (isViewPost || isBottomSheet)
          const PostInteractionBar(suffix: CardOptions(press: null)),
        if (!(isViewPost || isBottomSheet)) const PostInteractionBar(),
      ],
    ),
  );
}
