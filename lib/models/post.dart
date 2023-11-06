import 'package:greenit_version1/models/profile.dart';

enum PostConstructorType {
  defaultPost,
  sharedPost,
}

class Post {
  final int id;
  final Profile profile;
  final String time, date;
  final int? locationRange;
  final String? messageTitle;
  final String messageDescription;
  final List<String>? postImages;

  final Post? sharedPost;

  final PostConstructorType postConstructorType;

  Post({
    required this.id,
    required this.profile,
    required this.time,
    required this.date,
    required this.locationRange,
    required this.messageTitle,
    required this.messageDescription,
    required this.postImages,
  })  : postConstructorType = PostConstructorType.defaultPost,
        sharedPost = null;

  Post.shared({
    required this.id,
    required this.profile,
    required this.time,
    required this.date,
    required this.messageDescription,
    required this.sharedPost,
  })  : postConstructorType = PostConstructorType.sharedPost,
        postImages = null,
        locationRange = null,
        messageTitle = null;

  String get profileName => profile.name;
  String get profileImage => profile.profileAvatar;

  String get profileSharedName => sharedPost!.profileName;
  String get profileSharedImage => sharedPost!.profileImage;
}
