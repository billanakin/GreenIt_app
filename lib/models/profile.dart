import 'package:greenit_app/models/post.dart';

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

  int get numOfFollowers => followers.length;
  int get numOfFollowing => following.length;
}
