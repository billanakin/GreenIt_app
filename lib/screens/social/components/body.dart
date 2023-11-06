import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/custom_app_bar.dart';
import 'package:greenit_version1/components/options/card_options.dart';
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
      child: const Text('Shared'),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
