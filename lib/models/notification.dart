import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/models/profile.dart';

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
  })  : notificationConstructorType =
            NotificationConstructorType.recentlyFollowed,
        listOfProfilesLiked = null,
        postLiked = null,
        profileRecentlyPosted = null,
        postRecentlyPosted = null;

  Notification.recentlyLikedPost({
    required this.listOfProfilesLiked,
    required this.postLiked,
  })  : notificationConstructorType =
            NotificationConstructorType.recentlyLikedPost,
        profileRecentlyFollowing = null,
        profileRecentlyPosted = null,
        postRecentlyPosted = null;

  Notification.recentlyPosted({
    required this.profileRecentlyPosted,
    required this.postRecentlyPosted,
  })  : notificationConstructorType =
            NotificationConstructorType.recentlyPosted,
        profileRecentlyFollowing = null,
        listOfProfilesLiked = null,
        postLiked = null;

  String get profileRecentlyFollowingName => profileRecentlyFollowing!.name;
  String get profileRecentlyPostedName => profileRecentlyPosted!.name;

  String get profileRecentlyFollowingImage =>
      profileRecentlyFollowing!.profileAvatar;
  String get profileRecentlyPostedImage => profileRecentlyPosted!.profileAvatar;

  String get formattedlistofProfilesLikedNames {
    List<String> listofFirstNames = [];
    for (var profile in listOfProfilesLiked!) {
      String profileName = profile.name.split(' ')[0];
      listofFirstNames.add(profileName);
    }
    return listofFirstNames.join(', ');
  }
}
