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
    required this.notification,
  });

  final AppNotif.Notification notification;

  @override
  Widget build(BuildContext context) {
    Widget? notificationCardOutput;

    if (notification.notificationConstructorType ==
        AppNotif.NotificationConstructorType.recentlyFollowed) {
      notificationCardOutput =
          buildRecentlyFollowedTypeNotificationCard(notification);
    } else if (notification.notificationConstructorType ==
        AppNotif.NotificationConstructorType.recentlyPosted) {
      notificationCardOutput =
          buildRecentlyPostedTypeNotificationCard(notification);
    } else if (notification.notificationConstructorType ==
        AppNotif.NotificationConstructorType.recentlyLikedPost) {
      notificationCardOutput =
          buildRecentlyLikedPostTypeNotificationCard(notification);
    }
    return notificationCardOutput!;
  }

  Container buildRecentlyLikedPostTypeNotificationCard(
      AppNotif.Notification notification) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding),
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
                      profileAvatarImage: notification
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
                      notification.formattedlistofProfilesLikedNames,
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
                notification.postLiked!.messageTitle!,
                style: kSecondaryBodyTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const VerticalSpacing(of: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  notification.postLiked!.messageDescription,
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
          const VerticalSpacing(of: 20),
          const Divider(),
        ],
      ),
    );
  }

  Container buildRecentlyPostedTypeNotificationCard(
      AppNotif.Notification notification) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileAvatar.secondary(
                profileAvatarImage: notification.profileRecentlyPostedImage,
              ),
              const HorizontalSpacing(of: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.profileRecentlyPostedName,
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
                notification.postRecentlyPosted!.messageTitle!,
                style: kSecondaryBodyTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const VerticalSpacing(of: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  notification.postRecentlyPosted!.messageDescription,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: kCaptionTextStyle.copyWith(
                    color: Colors.black,
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
          const VerticalSpacing(of: 20),
          const Divider(),
        ],
      ),
    );
  }

  Container buildRecentlyFollowedTypeNotificationCard(
      AppNotif.Notification notification) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileAvatar.secondary(
                profileAvatarImage: notification.profileRecentlyFollowingImage,
              ),
              const HorizontalSpacing(of: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.profileRecentlyFollowingName,
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
          const VerticalSpacing(of: 20),
          const Divider(),
        ],
      ),
    );
  }
}
