import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/models/user.dart';

class Profile {
  final int id;
  final String name;
  final List<Profile> followers, following;
  final List<Post> posts;
  final String profileAvatar;

  final bool isCurrentUser;

  Profile({
    List<Profile>? followers,
    List<Profile>? following,
    List<Post>? posts,
    this.isCurrentUser = false,
    required this.id,
    required this.name,
    required this.profileAvatar,
  })  : followers = followers ?? [],
        following = following ?? [],
        posts = posts ?? [];

  factory Profile.fromUser(User user) {
    return Profile(
        followers: <Profile>[],
        following: <Profile>[],
        posts: null,
        isCurrentUser: Current.user?.id == user.id,
        id: user.id,
        name: user.name,
        profileAvatar: user.avatarUrl);
  }

  int get numOfFollowers => followers.length;
  int get numOfFollowing => following.length;
}
