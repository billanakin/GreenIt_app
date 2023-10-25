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

// Demo Profiles
List<Profile> demoProfilesData = [
  Profile(
    id: 0,
    name: 'Dominic Osorio',
    profileAvatar: 'assets/images/ Profile/profile1.png',
  ),
  Profile(
    id: 1,
    name: 'Henry Yap Three',
    profileAvatar: 'assets/images/ Profile/profile6.png',
  ),
  Profile(
    id: 2,
    name: 'Anakin Vader',
    profileAvatar: 'assets/images/ Profile/profile7.png',
  ),
  Profile(
    id: 3,
    name: 'Lionel Messi',
    profileAvatar: 'assets/images/ Profile/user_profile.jpeg',
  ),
  Profile(
    id: 4,
    name: 'Russy Fluffy',
    profileAvatar: 'assets/images/ Profile/profile5.png',
  ),
  Profile(
    id: 5,
    name: 'Carlos Sainz',
    profileAvatar: 'assets/images/ Profile/profile3.png',
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
  )
];
