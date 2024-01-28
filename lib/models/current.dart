import 'package:greenit_app/models/user.dart';
import 'package:greenit_app/models/user_with_auth_token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Current {
  static late SharedPreferences _prefs;

  static User? get user {
    if (!authenticated) return null;

    return User(
      id: _prefs.getInt('user:id')!,
      email: _prefs.getString('user:authToken')!,
      firstName: _prefs.getString('user:firstName')!,
      lastName: _prefs.getString('user:lastName')!,
    );
  }

  static String? get authToken {
    return _prefs.getString('user:authToken');
  }

  static bool get authenticated => (authToken != null);

  static bool get firstTimeUse => !notFirstTimeUse;

  static bool get notFirstTimeUse {
    return _prefs.containsKey('notFirstTimeUse') &&
        _prefs.getBool('notFirstTimeUse')!;
  }

  static markAsNotFirstTimeUse() async {
    await _prefs.setBool('notFirstTimeUse', true);
  }

  static setup() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static refreshUserWithAuthToken(UserWithAuthToken userWithAuthToken) async {
    await _prefs.setString('user:authToken', userWithAuthToken.token);
    await _prefs.setInt('user:id', userWithAuthToken.id);
    await _prefs.setString('user:email', userWithAuthToken.email);
    await _prefs.setString('user:firstName', userWithAuthToken.firstName);
    await _prefs.setString('user:lastName', userWithAuthToken.lastName);
  }

  static invalidate() async {
    await _prefs.remove('user:authToken');
    await _prefs.remove('user:id');
    await _prefs.remove('user:email');
    await _prefs.remove('user:firstName');
    await _prefs.remove('user:lastName');
  }
}
