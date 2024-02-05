import 'package:flutter/material.dart';
import 'package:greenit_app/components/loading/post_card_loading.dart';
import 'package:greenit_app/components/loading/profile_avatar_loading.dart';
import 'package:greenit_app/components/loading/search_bar_loading.dart';
import 'package:greenit_app/components/loading/section_header_loading.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';
import 'package:shimmer/shimmer.dart';

class ExploreScreenLoading extends StatelessWidget {
  const ExploreScreenLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          double.maxFinite,
          getProportionateScreenHeight(70),
        ),
        child: SafeArea(
          child: Container(
            height: getProportionateScreenHeight(70),
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultHorizontalPadding,
              vertical: kDefaultVerticalPadding,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: kPrimaryBorderColor,
                ),
              ),
            ),
            child: Shimmer.fromColors(
              baseColor: kLoadingSkeletonColor,
              highlightColor: Colors.grey.shade100,
              period: kDefaultDuration,
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ProfileAvatarLoading(),
                  HorizontalSpacing(of: 15),
                  SearchBarLoading(),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Shimmer.fromColors(
          baseColor: kLoadingSkeletonColor,
          highlightColor: Colors.grey.shade100,
          period: kDefaultDuration,
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildNavBarLoading(),
                  const VerticalSpacing(of: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultHorizontalPadding,
                    ),
                    child: const SectionHeaderLoading(),
                  ),
                  const VerticalSpacing(of: 20),
                  const PostCardLoading(),
                  const PostCardLoading(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildNavBarLoading() {
    return Container(
      height: getProportionateScreenHeight(70),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            margin: (index == 0 || index == 4)
                ? EdgeInsets.only(left: kDefaultHorizontalPadding)
                : EdgeInsets.zero,
            width: getProportionateScreenWidth(150),
            decoration: const BoxDecoration(
              color: kLoadingSkeletonColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const HorizontalSpacing(of: 5),
      ),
    );
  }
}
