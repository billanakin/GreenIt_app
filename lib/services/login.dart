import "package:greenit_app/models/current.dart";
import "package:greenit_app/models/user.dart";
import "package:greenit_app/services/_helper.dart";

Future<User?> call(String email, String password) async {
  int statusCode;
  dynamic jsonBody;
  (statusCode, jsonBody) = await callHttp(
    method: 'POST',
    path: '/sessions',
    body: {
      "email": email,
      "password": password,
    },
  );
  if (statusCode == 200) {
    User? user = User(
      id: jsonBody['data']['id'],
      email: jsonBody['data']['email'],
      firstName: jsonBody['data']['first_name'],
      lastName: jsonBody['data']['last_name'],
      avatarUrl: jsonBody['data']['avatar_url'],
      followedUsersCount: jsonBody['data']['followed_users_count'],
      followingUsersCount: jsonBody['data']['following_users_count'],
      authToken: jsonBody['auth_token'],
    );

    Current().callAfterLoginOrCheck(user);

    return user;
  } else if (statusCode == 422) {
    return Future.error('Invalid email/password combination.');
  }
}
