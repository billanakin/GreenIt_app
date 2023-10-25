import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/models/profile.dart';

class Notification {
  final Profile? profileRecentlyFollowing;

  final List<Profile>? listOfProfilesLiked;
  final Post? postLiked;

  final Profile? profileRecentlyPosted;
  final Post? postRecentlyPosted;

  Notification.recentlyFollowed({
    required this.profileRecentlyFollowing,
  })  : listOfProfilesLiked = null,
        postLiked = null,
        profileRecentlyPosted = null,
        postRecentlyPosted = null;

  Notification.recentlyLikedPost({
    required this.listOfProfilesLiked,
    required this.postLiked,
  })  : profileRecentlyFollowing = null,
        profileRecentlyPosted = null,
        postRecentlyPosted = null;

  Notification.recentlyPosted({
    required this.profileRecentlyPosted,
    required this.postRecentlyPosted,
  })  : profileRecentlyFollowing = null,
        listOfProfilesLiked = null,
        postLiked = null;

  String get profileRecentlyFollowingName => profileRecentlyFollowing!.name;
  String get profileRecentlyPostedName => profileRecentlyPosted!.name;
}
