import 'package:flutter/material.dart';
import 'package:greenit_version1/components/options/card_options.dart';
import 'package:greenit_version1/components/posts/post_interaction_bar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/screens/social/components/post_header.dart';
import 'package:greenit_version1/size_config.dart';

enum PostBodyType {
  defaultType,
  sharedType,
}

class PostBody extends StatelessWidget {
  const PostBody({
    super.key,
    required this.post,
  }) : postBodyType = PostBodyType.defaultType;

  const PostBody.shared({
    super.key,
    required this.post,
  }) : postBodyType = PostBodyType.sharedType;

  final Post post;
  final PostBodyType postBodyType;

  @override
  Widget build(BuildContext context) {
    Widget? postBodyOutput;

    if (postBodyType == PostBodyType.defaultType) {
      postBodyOutput = buildPostBodyDefaultType(post);
    } else if (postBodyType == PostBodyType.sharedType) {
      postBodyOutput = buildPostBodySharedType(post);
    }
    return postBodyOutput!;
  }
}

Container buildPostBodyDefaultType(Post post) {
  return Container(
    padding: const EdgeInsets.only(left: 50),
    width: double.infinity,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          post.messageTitle!,
          style: kSecondaryBodyTextStyle.copyWith(
            letterSpacing: 0.28,
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        const VerticalSpacing(of: 10),
        Text(
          post.messageDescription,
          style: kCaptionTextStyle.copyWith(
            color: Colors.black,
            fontFamily: 'Helvetica Neue',
            fontWeight: FontWeight.w200,
            height: 1.7,
          ),
        ),
        const VerticalSpacing(of: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              if (post.postImagesLength == 1)
                SizedBox(
                  width: 340,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(
                        post.postImages![0],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              if (post.postImagesLength > 1)
                ...List.generate(
                  post.postImagesLength,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        height: 180,
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
        const PostInteractionBar()
      ],
    ),
  );
}

Container buildPostBodySharedType(Post post) {
  return Container(
    padding: const EdgeInsets.only(left: 50),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          post.messageDescription,
          style: kCaptionTextStyle.copyWith(
            color: Colors.black,
            fontFamily: 'Helvetica Neue',
            fontWeight: FontWeight.w200,
            height: 1.7,
          ),
        ),
        const VerticalSpacing(of: 10),
        Container(
          width: double.maxFinite,
          height: 200,
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
                      style: kSecondaryBodyTextStyle.copyWith(
                        letterSpacing: 0.28,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const VerticalSpacing(of: 10),
                    Text(
                      post.sharedPost!.messageDescription,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: kCaptionTextStyle.copyWith(
                        color: Colors.black,
                        fontFamily: 'Helvetica Neue',
                        fontWeight: FontWeight.w200,
                        height: 1.7,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const VerticalSpacing(of: 20),
        const PostInteractionBar(),
      ],
    ),
  );
}
