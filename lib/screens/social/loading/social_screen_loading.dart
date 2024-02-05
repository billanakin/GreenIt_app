import 'package:flutter/material.dart';
import 'package:greenit_app/components/loading/post_card_loading.dart';
import 'package:greenit_app/components/loading/profile_avatar_loading.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';
import 'package:shimmer/shimmer.dart';

class SocialScreenLoading extends StatelessWidget {
  const SocialScreenLoading({super.key});

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
                children: [ProfileAvatarLoading()],
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
          child: const SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PostCardLoading(),
                  PostCardLoading(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
