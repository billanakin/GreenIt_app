import 'package:greenit_app/models/user.dart';

class CurrentUserService {
  static bool get isSignedIn {
    return false;
  }

  static User? get user {
    return null;
  }
}
