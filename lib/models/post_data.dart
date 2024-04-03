import 'package:greenit_app/models/post.dart';

class PostData {
  List<Post> _latest = List.empty();
  List<Post> _nearMe = List.empty();
  List<Post> _recommended = List.empty();
  List<Post> _trending = List.empty();
  List<Post> _fromFriends = List.empty();

  List<Post> get latest => _latest;
  set latest(value) => _latest = (value == null) ? List.empty() : value!;

  List<Post> get nearMe => _nearMe;
  set nearMe(value) => _nearMe = (value == null) ? List.empty() : value!;

  List<Post> get recommended => _recommended;
  set recommended(value) =>
      _recommended = (value == null) ? List.empty() : value!;

  List<Post> get trending => _trending;
  set trending(value) => _trending = (value == null) ? List.empty() : value!;

  List<Post> get fromFriends => _fromFriends;
  set fromFriends(value) =>
      _fromFriends = (value == null) ? List.empty() : value!;

  bool get isEmpty => all.isEmpty;
  bool get isNotEmpty => all.isNotEmpty;

  List<Post> get all {
    var posts = {
      ...latest,
      ...nearMe,
      ...recommended,
      ...trending,
      ...fromFriends
    };
    var list = posts.toList();
    list.sort((x, y) => x.createdAt.compareTo(y.createdAt) * -1);
    return list;
  }
}
