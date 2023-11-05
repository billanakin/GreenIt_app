import 'package:flutter/material.dart';
import 'package:greenit_version1/components/buttons/view_post_button.dart';
import 'package:greenit_version1/components/options/card_options.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/notification.dart' as AppNotif;
import 'package:greenit_version1/size_config.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.notificationData,
  });

  final AppNotif.Notification notificationData;

  @override
  Widget build(BuildContext context) {
    Widget? notificationCardOutput;

    if (notificationData.notificationConstructorType ==
        AppNotif.NotificationConstructorType.recentlyFollowed) {
      notificationCardOutput =
          buildRecentlyFollowedTypeNotificationCard(notificationData);
    } else if (notificationData.notificationConstructorType ==
        AppNotif.NotificationConstructorType.recentlyPosted) {
      notificationCardOutput =
          buildRecentlyPostedTypeNotificationCard(notificationData);
    } else if (notificationData.notificationConstructorType ==
        AppNotif.NotificationConstructorType.recentlyLikedPost) {
      notificationCardOutput =
          buildRecentlyLikedPostTypeNotificationCard(notificationData);
    }
    return notificationCardOutput!;
  }

  Container buildRecentlyLikedPostTypeNotificationCard(
      AppNotif.Notification notificationData) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0x66868686),
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ...List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ProfileAvatar.secondary(
                      profileAvatarImage: notificationData
                          .listOfProfilesLiked![index].profileAvatar),
                ),
              ),
              const HorizontalSpacing(of: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notificationData.formattedlistofProfilesLikedNames,
                      style: kSecondaryBodyTextStyle.copyWith(
                        height: 0,
                      ),
                    ),
                    const VerticalSpacing(of: 5),
                    Text(
                      'Liked your post',
                      style: kCaptionTextStyle.copyWith(
                        height: 0,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
              const HorizontalSpacing(of: 10),
              const CardOptions(press: null),
            ],
          ),
          const VerticalSpacing(of: 20),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notificationData.postLiked!.messageTitle!,
                style: kSecondaryBodyTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const VerticalSpacing(of: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  notificationData.postLiked!.messageDescription,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: kCaptionTextStyle.copyWith(
                    color: Colors.black,
                    fontFamily: 'Helvetica Neue',
                    fontWeight: FontWeight.w300,
                    height: 1.7,
                  ),
                ),
              ),
              const VerticalSpacing(of: 20),
              const SizedBox(
                width: double.infinity,
                child: ViewPostButton(press: null),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container buildRecentlyPostedTypeNotificationCard(
      AppNotif.Notification notificationData) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0x66868686),
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileAvatar.secondary(
                profileAvatarImage: notificationData.profileRecentlyPostedImage,
              ),
              const HorizontalSpacing(of: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notificationData.profileRecentlyPostedName,
                      style: kSecondaryBodyTextStyle.copyWith(
                        height: 0,
                      ),
                    ),
                    const VerticalSpacing(of: 5),
                    Text(
                      'Recently Posted',
                      style: kCaptionTextStyle.copyWith(
                        height: 0,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
              const HorizontalSpacing(of: 10),
              const CardOptions(press: null),
            ],
          ),
          const VerticalSpacing(of: 20),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notificationData.postRecentlyPosted!.messageTitle!,
                style: kSecondaryBodyTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const VerticalSpacing(of: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  notificationData.postRecentlyPosted!.messageDescription,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: kCaptionTextStyle.copyWith(
                    color: Colors.black,
                    fontFamily: 'Helvetica Neue',
                    fontWeight: FontWeight.w300,
                    height: 1.7,
                  ),
                ),
              ),
              const VerticalSpacing(of: 20),
              const SizedBox(
                width: double.infinity,
                child: ViewPostButton(press: null),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container buildRecentlyFollowedTypeNotificationCard(
      AppNotif.Notification notificationData) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0x66868686),
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ProfileAvatar.secondary(
            profileAvatarImage: notificationData.profileRecentlyFollowingImage,
          ),
          const HorizontalSpacing(of: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationData.profileRecentlyFollowingName,
                  style: kSecondaryBodyTextStyle.copyWith(
                    height: 0,
                  ),
                ),
                const VerticalSpacing(of: 5),
                Text(
                  'Recently followed you',
                  style: kCaptionTextStyle.copyWith(
                    height: 0,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
          const HorizontalSpacing(of: 10),
          const CardOptions(press: null),
        ],
      ),
    );
  }
}
