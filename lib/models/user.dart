class User {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatarUrl;
  int followedUsersCount;
  int followingUsersCount;
  String authToken;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatarUrl,
    required this.followedUsersCount,
    required this.followingUsersCount,
    required this.authToken,
  });
}
