// Demo Notification Data
import 'package:greenit_app/models/notification.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:intl/intl.dart';

Notification notif0 = Notification.recentlyPosted(
  profileRecentlyPosted: Profile(
    id: 0,
    name: 'Dominic Osorio',
    profileAvatar: 'assets/images/profile/profile1.png',
  ),
  postRecentlyPosted: Post(
    id: 0,
    profile: Profile(
      id: 0,
      name: 'Dominic Osorio',
      profileAvatar: 'assets/images/profile/profile1.png',
    ),
    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
    date: DateFormat.yMMMd().format(DateTime.now()),
    locationRange: 5,
    messageTitle: 'The Argao LGU is cruel!',
    messageDescription:
        "Recent actions by the Argao LGU have raised concerns within our community. It's crucial that we engage in open dialogue to address these issues and work together for a more transparent and accountable local government. Let's channel our concerns into constructive solutions. 🤝 #CommunityEngagement #ArgaoLGU #Accountability",
    postImages: [
      'assets/images/posts/post_image8.png',
    ],
  ),
);

Notification notif1 = Notification.recentlyFollowed(
  profileRecentlyFollowing: Profile(
    id: 0,
    name: 'Dominic Osorio',
    profileAvatar: 'assets/images/profile/profile1.png',
  ),
);

Notification notif2 = Notification.recentlyFollowed(
  profileRecentlyFollowing: Profile(
    id: 1,
    name: 'Henry Yap Three',
    profileAvatar: 'assets/images/profile/profile6.png',
  ),
);

Notification notif3 = Notification.recentlyFollowed(
  profileRecentlyFollowing: Profile(
    id: 2,
    name: 'Anakin Vader',
    profileAvatar: 'assets/images/profile/profile7.png',
  ),
);

Notification notif4 = Notification.recentlyLikedPost(
  listOfProfilesLiked: [
    Profile(
      id: 4,
      name: 'Russy Fluffy',
      profileAvatar: 'assets/images/profile/profile5.png',
    ),
    Profile(
      id: 6,
      name: 'Bill Zamora',
      profileAvatar: 'assets/images/profile/profile4.png',
    ),
    Profile(
      id: 7,
      name: 'Cinate Rica',
      profileAvatar: 'assets/images/profile/profile2.png',
    ),
  ],
  postLiked: Post(
    id: 2,
    profile: Profile(
      id: 3,
      name: 'Lionel Messi',
      profileAvatar: 'assets/images/profile/user_profile.jpeg',
    ),
    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
    date: DateFormat.yMMMd().format(DateTime.now()),
    locationRange: 5,
    messageTitle: 'Keep up the good work, Talaytay FC!',
    messageDescription:
        "It's great to see organizations like Talaytay FC taking action on climate change! Let's keep the momentum going and inspire others to join the cause. Together, we can make a real impact in the fight against climate change. 🌍💚 #ClimateAction #TalaytayFC #ClimateChangeAwareness",
    postImages: [
      'assets/images/posts/post_image9.png',
    ],
  ),
);

Notification notif5 = Notification.recentlyFollowed(
  profileRecentlyFollowing: Profile(
    id: 4,
    name: 'Russy Fluffy',
    profileAvatar: 'assets/images/profile/profile5.png',
  ),
);

Notification notif6 = Notification.recentlyFollowed(
  profileRecentlyFollowing: Profile(
    id: 5,
    name: 'Carlos Sainz',
    profileAvatar: 'assets/images/profile/profile3.png',
  ),
);

class DemoNotificationData {
  static List<Notification> demoNotificationListData = [
    notif0,
    notif1,
    notif2,
    notif3,
    notif4,
    notif5,
    notif6,
  ];
}
