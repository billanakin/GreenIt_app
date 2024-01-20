import 'package:flutter/material.dart';
import 'package:greenit_version1/components/posts/post_card/post_card.dart';
import 'package:greenit_version1/components/posts/section_header.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/models/profile.dart';
import 'package:greenit_version1/screens/profile/components/flexible_space_content.dart';
import 'package:greenit_version1/screens/profile/components/profile_info_button.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.profile});

  final Profile profile;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final collapsedBarHeight = getProportionateScreenHeight(70);
    final expandedBarHeight = getProportionateScreenHeight(400);

    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: expandedBarHeight,
            collapsedHeight: collapsedBarHeight,
            leading: IconButton.filledTonal(
              style: IconButton.styleFrom(
                  backgroundColor: const Color(0x33868686)),
              color: Colors.white,
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_rounded),
            ),
            flexibleSpace: FlexibleSpaceContent(widget: widget),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultHorizontalPadding,
              vertical: kSecondaryVerticalPadding,
            ),
            sliver: SliverToBoxAdapter(
              child: profileInfoButton(
                profile: widget.profile,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: kSecondaryVerticalPadding,
            ),
            sliver: const SliverToBoxAdapter(
              child: SectionHeader(
                title: 'My Posts',
                subtitle: 'These are my contributions!',
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: widget.profile.posts.length,
              (BuildContext context, int index) =>
                  PostCard(post: widget.profile.posts[index]),
            ),
          ),
        ],
      ),
    );
  }
}
