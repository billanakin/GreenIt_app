class User {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatarUrl;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatarUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"] as int,
      email: json["email"] as String,
      firstName: json["first_name"] as String,
      lastName: json["last_name"] as String,
      avatarUrl: json["avatar_url"] as String,
    );
  }

  get name => "$firstName $lastName";
}
