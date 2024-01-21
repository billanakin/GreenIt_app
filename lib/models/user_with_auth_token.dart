import "package:greenit_app/models/user.dart";

class UserWithAuthToken extends User {
  String token;

  UserWithAuthToken({
    required this.token,
    required super.id,
    required super.email,
    required super.firstName,
    required super.lastName,
  });

  factory UserWithAuthToken.fromJson(Map<String, dynamic> json) {
    return UserWithAuthToken(
      token: json['auth_token'] as String,
      id: json["user"]["id"] as int,
      email: json["user"]["email"] as String,
      firstName: json["user"]["first_name"] as String,
      lastName: json["user"]["last_name"] as String,
    );
  }

  User get user {
    return User(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
    );
  }
}
