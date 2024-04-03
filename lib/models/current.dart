import 'package:greenit_app/models/user.dart';
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
      avatarUrl: _prefs.getString('user:avatarUrl')!,
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

  static refreshUserAndAuthToken(User user, String userWithAuthToken) async {
    var futures = <Future>[
      refreshUser(user),
      _prefs.setString('user:authToken', userWithAuthToken),
    ];
    await Future.wait(futures);
  }

  static setLocation(double latitude, double longitude) async {
    var futures = <Future>[
      _prefs.setDouble('location:latitude', latitude),
      _prefs.setDouble('location:longitude', longitude),
    ];
    await Future.wait(futures);
  }

  static refreshUser(User user) async {
    var futures = <Future>[
      _prefs.setInt('user:id', user.id),
      _prefs.setString('user:email', user.email),
      _prefs.setString('user:firstName', user.firstName),
      _prefs.setString('user:lastName', user.lastName),
      _prefs.setString('user:avatarUrl', user.avatarUrl),
    ];
    await Future.wait(futures);
  }

  static invalidate() async {
    await _prefs.remove('user:authToken');
    await _prefs.remove('user:id');
    await _prefs.remove('user:email');
    await _prefs.remove('user:firstName');
    await _prefs.remove('user:lastName');
    await _prefs.remove('user:avatarUrl');
  }
}
