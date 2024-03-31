import 'package:greenit_app/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Current {
  static final Current _singleton = Current._internal();
  late final SharedPreferences _prefs;

  factory Current() {
    return _singleton;
  }

  Current._internal();

  Future setup() async {
    _prefs = await SharedPreferences.getInstance();
  }

  void callAfterLoginOrCheck(User user) {
    _prefs.setInt("user.id", user.id);
    _prefs.setString("user.email", user.email);
    _prefs.setString("user.firstName", user.firstName);
    _prefs.setString("user.lastName", user.lastName);
    _prefs.setString("user.avatarUrl", user.avatarUrl);
    _prefs.setInt("user.followedUsersCount", user.followedUsersCount);
    _prefs.setInt("user.followingUsersCount", user.followingUsersCount);
    _prefs.setString("user.authToken", user.authToken);
  }

  void clearUser() {
    _prefs.remove("user.id");
    _prefs.remove("user.email");
    _prefs.remove("user.firstName");
    _prefs.remove("user.lastName");
    _prefs.remove("user.avatarUrl");
    _prefs.remove("user.followedUsersCount");
    _prefs.remove("user.followingUsersCount");
    _prefs.remove("user.authToken");
  }

  void callAfterAppUse() {
    _prefs.setBool("isNotFirstTimeUse", true);
  }

  String? get authToken {
    return _prefs.getString("user.authToken");
  }

  bool get isFirstTimeUse {
    var isNot = _prefs.getBool("isNotFirstTimeUse");
    return !(isNot != null && isNot);
  }

  User? get user {
    String? authToken = _prefs.getString("user.authToken");
    if (authToken != null) {
      return User(
        id: _prefs.getInt("user.id")!,
        email: _prefs.getString("user.email")!,
        firstName: _prefs.getString("user.firstName")!,
        lastName: _prefs.getString("user.lastName")!,
        avatarUrl: _prefs.getString("user.avatarUrl")!,
        followedUsersCount: _prefs.getInt("user.followedUsersCount")!,
        followingUsersCount: _prefs.getInt("user.followingUsersCount")!,
        authToken: authToken,
      );
    }

    return null;
  }
}
