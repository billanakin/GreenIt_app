import 'package:flutter/material.dart';
import 'package:greenit_app/components/loading/post_card_loading.dart';
import 'package:greenit_app/components/loading/profile_avatar_loading.dart';
import 'package:greenit_app/components/loading/search_bar_loading.dart';
import 'package:greenit_app/components/loading/section_header_loading.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreenLoading extends StatelessWidget {
  const HomeScreenLoading({super.key});

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
            decoration: BoxDecoration(
              color: const Color(0x66868686).withOpacity(0.5),
              border: const Border(
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
                  HorizontalSpacing(of: 60),
                  SearchBarLoading(),
                  HorizontalSpacing(of: 10),
                  ProfileAvatarLoading(),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: kLoadingSkeletonColor,
              ),
            ),
            buildMapOptionsButtonsLoading(),
            buildBottomSheetLoading(),
          ],
        ),
      ),
    );
  }

  Align buildBottomSheetLoading() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: DraggableScrollableSheet(
        initialChildSize: 0.13,
        minChildSize: 0.13,
        maxChildSize: 1,
        snap: true,
        expand: false,
        snapSizes: const [0.6, 1],
        snapAnimationDuration: kDefaultDuration,
        builder: (context, scrollController) => ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x21000000),
                  blurRadius: 6,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            width: SizeConfig.screenWidth,
            child: Shimmer.fromColors(
              baseColor: kLoadingSkeletonColor,
              highlightColor: Colors.grey.shade100,
              period: kDefaultDuration,
              child: ListView(
                padding: EdgeInsets.zero,
                controller: scrollController,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: IgnorePointer(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getProportionateScreenHeight(10),
                          bottom: getProportionateScreenHeight(10),
                        ),
                        height: getProportionateScreenHeight(5),
                        width: getProportionateScreenWidth(50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kPrimaryBorderColor,
                        ),
                      ),
                    ),
                  ),
                  const VerticalSpacing(of: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultHorizontalPadding,
                    ),
                    child: const SectionHeaderLoading(),
                  ),
                  const VerticalSpacing(of: 20),
                  const PostCardLoading(isBottomSheet: true),
                  const PostCardLoading(isBottomSheet: true),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Align buildMapOptionsButtonsLoading() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          right: kDefaultHorizontalPadding / 1.3,
          top: getProportionateScreenHeight(10),
        ),
        child: SizedBox(
          height: 110,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFC0C0C0),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFC0C0C0),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
