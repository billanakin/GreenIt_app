import "package:greenit_app/models/current.dart";
import "package:greenit_app/models/user.dart";
import "package:greenit_app/services/_helper.dart";

Future<bool?> call() async {
  int statusCode;
  dynamic jsonBody;
  var authToken = await Current().authToken;
  (statusCode, jsonBody) = await callHttp(
    method: 'GET',
    path: '/sessions',
    authToken: authToken,
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
      authToken: authToken!,
    );

    Current().callAfterLoginOrCheck(user);

    return true;
  } else if (statusCode == 401) {
    Current().clearUser();
    return false;
  }

  return null;
}
