import 'package:flutter/material.dart';
import 'package:greenit_app/components/buttons/view_post_button.dart';
import 'package:greenit_app/components/options/card_options.dart';
import 'package:greenit_app/components/profile/profile_avatar.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/notification.dart' as AppNotif;
import 'package:greenit_app/screens/profile/profile_screen.dart';
import 'package:greenit_app/screens/view_post/view_post_screen.dart';
import 'package:greenit_app/size_config.dart';

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
      notificationCardOutput = InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileScreen(),
            settings: RouteSettings(
              arguments: notification.profileRecentlyFollowing,
            ),
          ),
        ),
        child: buildRecentlyFollowedTypeNotificationCard(notification),
      );
    } else if (notification.notificationConstructorType ==
        AppNotif.NotificationConstructorType.recentlyPosted) {
      notificationCardOutput = InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ViewPostScreen(),
            settings: RouteSettings(
              arguments: notification.postRecentlyPosted!,
            ),
          ),
        ),
        child: buildRecentlyPostedTypeNotificationCard(notification),
      );
    } else if (notification.notificationConstructorType ==
        AppNotif.NotificationConstructorType.recentlyLikedPost) {
      notificationCardOutput = InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ViewPostScreen(),
            settings: RouteSettings(
              arguments: notification.postLiked!,
            ),
          ),
        ),
        child: buildRecentlyLikedPostTypeNotificationCard(notification),
      );
    }
    return notificationCardOutput!;
  }

  Container buildRecentlyLikedPostTypeNotificationCard(
      AppNotif.Notification notification) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultHorizontalPadding,
        right: kDefaultHorizontalPadding,
        top: kSecondaryVerticalPadding,
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
                      profile: notification.listOfProfilesLiked![index]),
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
                      style: kPrimaryBodyTextStyle,
                    ),
                    Text('Liked your post', style: kSecondaryBodyTextStyle)
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
                notification.postLiked!.title,
                style: kPrimaryBodyTextStyle.copyWith(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const VerticalSpacing(of: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  notification.postLiked!.body,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: kPrimaryBodyTextStyle,
                ),
              ),
              const VerticalSpacing(of: 20),
              SizedBox(
                width: double.infinity,
                child: PrimaryTextButton(
                  press: () {},
                  text: 'View Post',
                ),
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
      padding: EdgeInsets.only(
        left: kDefaultHorizontalPadding,
        right: kDefaultHorizontalPadding,
        top: kSecondaryVerticalPadding,
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
                profile: notification.profileRecentlyPosted!,
              ),
              const HorizontalSpacing(of: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.profileRecentlyPostedName,
                      style: kPrimaryBodyTextStyle,
                    ),
                    Text(
                      'Recently Posted',
                      style: kSecondaryBodyTextStyle,
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
                notification.postRecentlyPosted!.title,
                style: kPrimaryBodyTextStyle.copyWith(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const VerticalSpacing(of: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  notification.postRecentlyPosted!.body,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: kPrimaryBodyTextStyle,
                ),
              ),
              const VerticalSpacing(of: 20),
              SizedBox(
                width: double.infinity,
                child: PrimaryTextButton(
                  press: () {},
                  text: 'View Post',
                ),
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
      padding: EdgeInsets.only(
        left: kDefaultHorizontalPadding,
        right: kDefaultHorizontalPadding,
        top: kSecondaryVerticalPadding,
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
                profile: notification.profileRecentlyFollowing!,
              ),
              const HorizontalSpacing(of: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.profileRecentlyFollowingName,
                      style: kPrimaryBodyTextStyle,
                    ),
                    const VerticalSpacing(of: 2),
                    Text(
                      'Recently followed you',
                      style: kSecondaryBodyTextStyle,
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
