import 'package:flutter/material.dart';
import 'package:greenit_version1/components/buttons/view_post_button.dart';
import 'package:greenit_version1/components/options/card_options.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/data/profile_data.dart';
import 'package:greenit_version1/models/notification.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  // final List<Notification> demoNotificationDataList = demoNotificationData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: ListView.builder(
          itemCount: demoNotificationData.length,
          itemBuilder: ((context, index) => NotificationCard(
                notificationData: demoNotificationData[index],
              )),
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.notificationData,
  });

  // ignore: prefer_typing_uninitialized_variables
  final notificationData;

  @override
  Widget build(BuildContext context) {
    Widget? notificationCardOutput;

    if (notificationData.notificationConstructorType ==
        NotificationConstructorType.recentlyFollowed) {
      notificationCardOutput = buildRecentlyFollowedTypeNotificationCard();
    } else if (notificationData.notificationConstructorType ==
        NotificationConstructorType.recentlyPosted) {
      notificationCardOutput = buildRecentlyPostedTypeNotificationCard();
    } else if (notificationData.notificationConstructorType ==
        NotificationConstructorType.recentlyLikedPost) {
      notificationCardOutput = buildRecentlyLikedPostTypeNotificationCard();
    }
    return notificationCardOutput!;
  }

  InkWell buildRecentlyLikedPostTypeNotificationCard() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
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
                        profileAvatarImage: demoProfilesData[index]
                            .profileAvatar), // TODO: For debugging purposes only not actual data
                  ),
                ),
                const HorizontalSpacing(of: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Russy, Bill, Cinate',
                        style: kSecondaryBodyTextStyle.copyWith(
                          height: 0,
                        ),
                      ),
                      const VerticalSpacing(of: 5),
                      Text(
                        'Liked your',
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
                  'Keep up the good work, Talaytay FC!',
                  style: kSecondaryBodyTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const VerticalSpacing(of: 10),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "It's great to see organizations like Talaytay FC taking action on climate change! Let's keep the momentum going and inspire others to join the cause. Together, we can make a real impact in the fight against climate change. 🌍💚 #ClimateAction #TalaytayFC #ClimateChangeAwareness",
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
      ),
    );
  }

  InkWell buildRecentlyPostedTypeNotificationCard() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
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
                const ProfileAvatar.secondary(
                  profileAvatarImage: 'assets/images/profile/profile3.png',
                ),
                const HorizontalSpacing(of: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dominic',
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
                  'The Argao LGU is cruel!',
                  style: kSecondaryBodyTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const VerticalSpacing(of: 10),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Recent actions by the Argao LGU have raised concerns within our community. It's crucial that we engage in open dialogue to address these issues and work together for a more transparent and accountable local government. Let's channel our concerns into constructive solutions. 🤝 #CommunityEngagement #ArgaoLGU #Accountability",
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
      ),
    );
  }

  InkWell buildRecentlyFollowedTypeNotificationCard() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
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
            const ProfileAvatar.secondary(
              profileAvatarImage: 'assets/images/profile/profile5.png',
            ),
            const HorizontalSpacing(of: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Russy Fluffy',
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
      ),
    );
  }
}
