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

// Demo Notification Data
// List<Notification> demoNotificationData = [
//   Notification.recentlyPosted(
//     profileRecentlyPosted: Profile(
//       id: 0,
//       name: 'Dominic Osorio',
//       profileAvatar: '',
//     ),
//     postRecentlyPosted: Post(
//       id: id,
//       profile: profile,
//       time: time,
//       date: date,
//       locationRange: locationRange,
//       messageTitle: messageTitle,
//       messageDescription: messageDescription,
//       postImages: postImages,
//     ),
//   )
// ];
