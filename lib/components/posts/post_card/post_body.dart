import 'package:flutter/material.dart';
import 'package:greenit_app/components/options/card_options.dart';
import 'package:greenit_app/components/posts/post_card/post_header.dart';
import 'package:greenit_app/components/posts/post_interaction_bar.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/post.dart';
//import 'package:greenit_app/screens/view_post/view_post_screen.dart';
import 'package:greenit_app/size_config.dart';

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
        context,
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
          post.title,
          style: kPrimaryBodyTextStyle.copyWith(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w600,
          ),
        ),
        const VerticalSpacing(of: 10),
        Text(
          post.body,
          style: kPrimaryBodyTextStyle,
        ),
        const VerticalSpacing(of: 10),
        if (post.images?.length == 1)
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                post.images![0].url,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        if ((post.images?.length ?? 0) > 1)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  post.images!.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        height: getProportionateScreenHeight(180),
                        child: AspectRatio(
                          aspectRatio: 4 / 5,
                          child: Image.network(
                            post.images![index].url,
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
          PostInteractionBar(
            suffix: const CardOptions(press: null),
            post: post,
          ),
        if (!(isViewPost || isBottomSheet))
          PostInteractionBar(
            post: post,
          ),
      ],
    ),
  );
}

Container buildPostBodySharedType(
  Post post,
  bool isViewPost,
  bool isBottomSheet,
  BuildContext context,
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
          post.body,
          style: kPrimaryBodyTextStyle,
        ),
        const VerticalSpacing(of: 10),
        InkWell(
          onTap: () {
            //TODO
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const ViewPostScreen(),
            //     settings: RouteSettings(arguments: post.sharedPost),
            //   ),
            // );
          },
          child: Container(
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
                  post: post,
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
                        post.title,
                        style: kPrimaryBodyTextStyle.copyWith(
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const VerticalSpacing(of: 10),
                      Text(
                        post.body,
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
        ),
        const VerticalSpacing(of: 20),
        if (isViewPost || isBottomSheet)
          PostInteractionBar(
            suffix: const CardOptions(press: null),
            post: post,
          ),
        if (!(isViewPost || isBottomSheet))
          PostInteractionBar(
            post: post,
          ),
      ],
    ),
  );
}
