import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/models/profile.dart';
import 'package:intl/intl.dart';

enum NotificationConstructorType {
  recentlyFollowed,
  recentlyLikedPost,
  recentlyPosted,
}

class Notification {
  final Profile? profileRecentlyFollowing;

  final List<Profile>? listOfProfilesLiked;
  final Post? postLiked;

  final Profile? profileRecentlyPosted;
  final Post? postRecentlyPosted;

  final NotificationConstructorType notificationConstructorType;

  Notification.recentlyFollowed({
    required this.profileRecentlyFollowing,
    this.notificationConstructorType =
        NotificationConstructorType.recentlyFollowed,
  })  : listOfProfilesLiked = null,
        postLiked = null,
        profileRecentlyPosted = null,
        postRecentlyPosted = null;

  Notification.recentlyLikedPost({
    required this.listOfProfilesLiked,
    required this.postLiked,
    this.notificationConstructorType =
        NotificationConstructorType.recentlyLikedPost,
  })  : profileRecentlyFollowing = null,
        profileRecentlyPosted = null,
        postRecentlyPosted = null;

  Notification.recentlyPosted({
    required this.profileRecentlyPosted,
    required this.postRecentlyPosted,
    this.notificationConstructorType =
        NotificationConstructorType.recentlyPosted,
  })  : profileRecentlyFollowing = null,
        listOfProfilesLiked = null,
        postLiked = null;

  String get profileRecentlyFollowingName => profileRecentlyFollowing!.name;
  String get profileRecentlyPostedName => profileRecentlyPosted!.name;
}

// Demo Notification Data
List<Notification> demoNotificationData = [
  Notification.recentlyPosted(
    profileRecentlyPosted: Profile(
      id: 0,
      name: 'Dominic Osorio',
      profileAvatar: 'assets/images/ Profile/profile1.png',
    ),
    postRecentlyPosted: Post(
      id: 0,
      profile: Profile(
        id: 0,
        name: 'Dominic Osorio',
        profileAvatar: 'assets/images/ Profile/profile1.png',
      ),
      time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
      date: DateFormat.yMMMd().format(DateTime.now()),
      locationRange: 5,
      messageTitle: 'The Argao LGU is cruel!',
      messageDescription:
          "Recent actions by the Argao LGU have raised concerns within our community. It's crucial that we engage in open dialogue to address these issues and work together for a more transparent and accountable local government. Let's channel our concerns into constructive solutions. 🤝 #CommunityEngagement #ArgaoLGU #Accountability",
      postImages: [
        'assets/images/Posts/post_image8.png',
      ],
    ),
  ),
  Notification.recentlyFollowed(
    profileRecentlyFollowing: Profile(
      id: 0,
      name: 'Dominic Osorio',
      profileAvatar: 'assets/images/ Profile/profile1.png',
    ),
  ),
  Notification.recentlyFollowed(
    profileRecentlyFollowing: Profile(
      id: 1,
      name: 'Henry Yap Three',
      profileAvatar: 'assets/images/ Profile/profile6.png',
    ),
  ),
  Notification.recentlyFollowed(
    profileRecentlyFollowing: Profile(
      id: 2,
      name: 'Anakin Vader',
      profileAvatar: 'assets/images/ Profile/profile7.png',
    ),
  ),
  Notification.recentlyLikedPost(
    listOfProfilesLiked: [
      Profile(
        id: 4,
        name: 'Russy Fluffy',
        profileAvatar: 'assets/images/ Profile/profile5.png',
      ),
      Profile(
        id: 6,
        name: 'Bill Zamora',
        profileAvatar: 'assets/images/ Profile/profile4.png',
      ),
      Profile(
        id: 7,
        name: 'Cinate Rica',
        profileAvatar: 'assets/images/ Profile/profile2.png',
      ),
    ],
    postLiked: Post(
      id: 2,
      profile: Profile(
        id: 3,
        name: 'Lionel Messi',
        profileAvatar: 'assets/images/ Profile/user_profile.jpeg',
      ),
      time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
      date: DateFormat.yMMMd().format(DateTime.now()),
      locationRange: 5,
      messageTitle: 'Keep up the good work, Talaytay FC!',
      messageDescription:
          "It's great to see organizations like Talaytay FC taking action on climate change! Let's keep the momentum going and inspire others to join the cause. Together, we can make a real impact in the fight against climate change. 🌍💚 #ClimateAction #TalaytayFC #ClimateChangeAwareness",
      postImages: [
        'assets/images/Posts/post_image9.png',
      ],
    ),
  ),
  Notification.recentlyFollowed(
    profileRecentlyFollowing: Profile(
      id: 4,
      name: 'Russy Fluffy',
      profileAvatar: 'assets/images/ Profile/profile5.png',
    ),
  ),
  Notification.recentlyFollowed(
    profileRecentlyFollowing: Profile(
      id: 5,
      name: 'Carlos Sainz',
      profileAvatar: 'assets/images/ Profile/profile3.png',
    ),
  ),
];
