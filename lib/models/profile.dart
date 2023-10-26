import 'package:greenit_version1/models/post.dart';

class Profile {
  final int id;
  final String name;
  final List<Profile> followers, following;
  final List<Post> posts;
  final String profileAvatar;

  Profile({
    List<Profile>? followers,
    List<Profile>? following,
    List<Post>? posts,
    required this.id,
    required this.name,
    required this.profileAvatar,
  })  : followers = followers ?? [],
        following = following ?? [],
        posts = posts ?? [];

  int get numOfFollowers => followers.length;
  int get numOfFollowing => following.length;
}
