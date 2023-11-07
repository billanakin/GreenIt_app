import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/custom_app_bar.dart';
import 'package:greenit_version1/components/options/card_options.dart';
import 'package:greenit_version1/components/posts/post_interaction_bar.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/components/text/inline_text_divider.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/data/post_data.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

List<Post> demoPostData = DemoPostData.demoPostListData;

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            leading: SizedBox.shrink(),
            expandedHeight: 70,
            floating: true,
            flexibleSpace: CustomAppBar(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: demoPostData.length,
              (context, index) => PostCard(post: demoPostData[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    Widget? postCardOutput;

    if (post.postConstructorType == PostConstructorType.defaultPost) {
      postCardOutput = buildDefaultPostCard(post);
    } else if (post.postConstructorType == PostConstructorType.sharedPost) {
      postCardOutput = buildSharedPostCard(post);
    }

    return postCardOutput!;
  }

  Container buildSharedPostCard(Post post) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileAvatar.secondary(profileAvatarImage: post.profileImage),
              const HorizontalSpacing(of: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.profileName,
                      style: kSecondaryBodyTextStyle.copyWith(
                        height: 0,
                      ),
                    ),
                    const VerticalSpacing(of: 5),
                    DefaultTextStyle(
                      style: kCaptionTextStyle.copyWith(
                        height: 0,
                        fontWeight: FontWeight.w300,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(post.time.toString()),
                          const HorizontalSpacing(of: 5),
                          const InlineTextDivider(),
                          const HorizontalSpacing(of: 5),
                          Text(post.date.toString()),
                          const HorizontalSpacing(of: 5),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const HorizontalSpacing(of: 10),
              const CardOptions(press: null),
            ],
          ),
          const VerticalSpacing(of: 20),
          Container(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileAvatar.secondary(
                              profileAvatarImage: post.profileSharedImage),
                          const HorizontalSpacing(of: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  post.sharedPost!.profileName,
                                  style: kSecondaryBodyTextStyle.copyWith(
                                    height: 0,
                                  ),
                                ),
                                const VerticalSpacing(of: 5),
                                DefaultTextStyle(
                                  style: kCaptionTextStyle.copyWith(
                                    height: 0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(post.sharedPost!.time.toString()),
                                      const HorizontalSpacing(of: 5),
                                      const InlineTextDivider(),
                                      const HorizontalSpacing(of: 5),
                                      Text(post.sharedPost!.date.toString()),
                                      const HorizontalSpacing(of: 5),
                                      const InlineTextDivider(),
                                      const HorizontalSpacing(of: 5),
                                      Text(
                                          '${post.sharedPost!.locationRange.toString()} km'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
          ),
          const VerticalSpacing(of: 20),
          const Divider(),
        ],
      ),
    );
  }

  Container buildDefaultPostCard(Post post) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileAvatar.secondary(profileAvatarImage: post.profileImage),
              const HorizontalSpacing(of: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.profileName,
                      style: kSecondaryBodyTextStyle.copyWith(
                        height: 0,
                      ),
                    ),
                    const VerticalSpacing(of: 5),
                    DefaultTextStyle(
                      style: kCaptionTextStyle.copyWith(
                        height: 0,
                        fontWeight: FontWeight.w300,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(post.time.toString()),
                          const HorizontalSpacing(of: 5),
                          const InlineTextDivider(),
                          const HorizontalSpacing(of: 5),
                          Text(post.date.toString()),
                          const HorizontalSpacing(of: 5),
                          const InlineTextDivider(),
                          const HorizontalSpacing(of: 5),
                          Text(
                              '${post.locationRange.toString()} km') // TODO: Format location Range
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const HorizontalSpacing(of: 10),
              const CardOptions(press: null),
            ],
          ),
          const VerticalSpacing(of: 20),
          Container(
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
          ),
          const VerticalSpacing(of: 20),
          const Divider(),
        ],
      ),
    );
  }
}
