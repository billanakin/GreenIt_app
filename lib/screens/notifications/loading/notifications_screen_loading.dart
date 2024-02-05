import 'package:flutter/material.dart';
import 'package:greenit_app/components/loading/post_header_loading.dart';
import 'package:greenit_app/components/loading/profile_avatar_loading.dart';
import 'package:greenit_app/components/loading/text_paragraph_loading.dart';
import 'package:greenit_app/components/loading/text_subtitle_loading.dart';
import 'package:greenit_app/components/loading/text_title_loading.dart';
import 'package:greenit_app/components/options/card_options.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';
import 'package:shimmer/shimmer.dart';

class NotificationsScreenLoading extends StatelessWidget {
  const NotificationsScreenLoading({super.key});

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
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildRecentlyFollowedNotifLoading(),
                  buildRecentlyPostedNotifLoading(),
                  buildRecentlyFollowedNotifLoading(),
                  buildRecentlyFollowedNotifLoading(),
                  buildRecentlyFollowedNotifLoading(),
                  buildRecentlyPostedNotifLoading(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildRecentlyPostedNotifLoading() {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultHorizontalPadding,
        right: kDefaultHorizontalPadding,
        top: kSecondaryVerticalPadding,
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeaderLoading(),
          VerticalSpacing(of: 20),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextTitleLoading(),
              VerticalSpacing(of: 10),
              TextParagraphLoading(),
              VerticalSpacing(of: 15),
              Align(
                alignment: Alignment.center,
                child: TextTitleLoading(
                  width: 90,
                ),
              ),
            ],
          ),
          VerticalSpacing(of: 20),
          Divider(),
        ],
      ),
    );
  }

  Container buildRecentlyFollowedNotifLoading() {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultHorizontalPadding,
        right: kDefaultHorizontalPadding,
        top: kSecondaryVerticalPadding,
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileAvatarLoading(),
              HorizontalSpacing(of: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextTitleLoading(),
                    VerticalSpacing(of: 5),
                    TextSubtitleLoading(),
                  ],
                ),
              ),
              HorizontalSpacing(of: 10),
              CardOptions(press: null),
            ],
          ),
          VerticalSpacing(of: 20),
          Divider(),
        ],
      ),
    );
  }
}
