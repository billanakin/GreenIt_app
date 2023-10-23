class Profile {
  final int id;
  final String name;
  final List<Profile> followers, following;
  // final List<Post> posts;
  final String profileAvatar;

  Profile({
    List<Profile>? followers,
    List<Profile>? following,
    required this.id,
    required this.name,
    required this.profileAvatar,
  })  : followers = followers ?? [],
        following = following ?? [];

  int get numOfFollowers => followers.length;
  int get numOfFollowing => following.length;
}

// Demo Profiles
List<Profile> demoProfiles = [
  Profile(id: 0, name: 'Dominic Osorio', profileAvatar: ''),
  Profile(id: 1, name: 'Henry Yap Three', profileAvatar: ''),
  Profile(id: 2, name: 'Anakin Vader', profileAvatar: ''),
  Profile(id: 3, name: 'Lionel Messi', profileAvatar: ''),
  Profile(id: 4, name: 'Russy Fluffy', profileAvatar: ''),
  Profile(id: 5, name: 'Carlos Sainz', profileAvatar: ''),
  Profile(id: 6, name: 'Bill Zamora', profileAvatar: ''),
  Profile(id: 7, name: 'Cinate Rica', profileAvatar: '')
];
