import 'package:flutter/material.dart';
import 'package:greenit_app/components/posts/post_card/post_card.dart';
import 'package:greenit_app/components/posts/section_header.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/screens/profile/components/flexible_space_content.dart';
import 'package:greenit_app/screens/profile/components/profile_info_button.dart';
import 'package:greenit_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.profile});

  final Profile profile;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final expandedBarHeight = getProportionateScreenHeight(400.0001);

    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: expandedBarHeight,
            leading: IconButton.filledTonal(
              style: IconButton.styleFrom(
                backgroundColor: const Color(0x33868686),
              ),
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
              child: ProfileInfoButton(
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
          //TODO
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     childCount: widget.profile.posts.length,
          //     (BuildContext context, int index) => PostCard(
          //       post: widget.profile.posts[index],
          //       isProfile: true,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
