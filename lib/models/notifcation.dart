import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/models/profile.dart';

class Notification {
  final Profile? profileFollowing;

  final List<Profile>? listOfProfileLiked;
  final Post? postLiked;

  Notification({
    required this.profileFollowing,
  })  : listOfProfileLiked = null,
        postLiked = null;

  Notification.likedPost({
    required this.listOfProfileLiked,
    required this.postLiked,
  }) : profileFollowing = null;

  String get profileFollowingName => profileFollowing!.name;
}
