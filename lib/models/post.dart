import 'package:greenit_app/models/comment.dart';
import 'package:greenit_app/models/profile.dart';

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
  final List<Comment>? postComments;
  final int postLikes;

  final Post? sharedPost;

  final PostConstructorType postConstructorType;

  const Post({
    required this.id,
    required this.profile,
    required this.time,
    required this.date,
    required this.locationRange,
    required this.messageTitle,
    required this.messageDescription,
    required this.postImages,
    this.postComments,
    this.postLikes = 0,
  })  : postConstructorType = PostConstructorType.defaultPost,
        sharedPost = null;

  const Post.shared({
    required this.id,
    required this.profile,
    required this.time,
    required this.date,
    required this.messageDescription,
    required this.sharedPost,
    this.postComments,
    this.postLikes = 0,
  })  : postConstructorType = PostConstructorType.sharedPost,
        postImages = null,
        locationRange = null,
        messageTitle = null;

  String get profileName => profile.name;
  String get profileImage => profile.profileAvatar;

  String get profileSharedName => sharedPost!.profileName;
  String get profileSharedImage => sharedPost!.profileImage;

  int get postImagesLength => postImages!.length;
  int get postCommentLength => postComments!.length;

  PostConstructorType get postType => postConstructorType;
}
