// Demo Notification Data
import 'package:greenit_app/dummy_data/post_data.dart';
import 'package:greenit_app/dummy_data/profile_data.dart';
import 'package:greenit_app/models/notification.dart';

Notification notif0 = Notification.recentlyPosted(
  profileRecentlyPosted: profile0,
  postRecentlyPosted: post0,
);

Notification notif1 = Notification.recentlyFollowed(
  profileRecentlyFollowing: profile0,
);

Notification notif2 = Notification.recentlyFollowed(
  profileRecentlyFollowing: profile1,
);

Notification notif3 = Notification.recentlyFollowed(
  profileRecentlyFollowing: profile2,
);

Notification notif4 = Notification.recentlyLikedPost(
  listOfProfilesLiked: [
    profile4,
    profile6,
    profile7,
  ],
  postLiked: post2,
);

Notification notif5 = Notification.recentlyFollowed(
  profileRecentlyFollowing: profile4,
);

Notification notif6 = Notification.recentlyFollowed(
  profileRecentlyFollowing: profile5,
);

class DemoNotificationData {
  static List<Notification> demoNotificationListData = [
    notif0,
    notif1,
    notif2,
    notif3,
    notif5,
    notif6,
  ];
}
