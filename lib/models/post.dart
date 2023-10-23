import 'package:greenit_version1/models/profile.dart';
import 'package:intl/intl.dart';

class Post {
  final int id;
  final Profile profile;
  final String time, date;
  final int? locationRange;
  final String? messageTitle;
  final String messageDescription;
  final List<String>? postImages;

  // TO BE OPTIMIZED
  // final List<Comment> comments;
  // final List<Share> shares;
  // final List<Like> likes;

  final Post? sharedPost;

  Post({
    required this.id,
    required this.profile,
    required this.time,
    required this.date,
    required this.locationRange,
    required this.messageTitle,
    required this.messageDescription,
    required this.postImages,
  }) : sharedPost = null;

  Post.shared({
    required this.id,
    required this.profile,
    required this.time,
    required this.date,
    required this.messageDescription,
    required this.sharedPost,
  })  : postImages = null,
        locationRange = null,
        messageTitle = null;

  String get profileName => profile.name;
}

// Demo Post Data
List<Post> demoPostData = [
  Post(
    id: 0,
    profile: Profile(id: 0, name: 'Dominic Osorio', profileAvatar: ''),
    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
    date: DateFormat.yMMMd().format(DateTime.now()),
    locationRange: 5,
    messageTitle: '',
    messageDescription: '',
    postImages: [
      '',
      '',
      '',
    ],
  ),
  Post(
    id: 1,
    profile: Profile(id: 1, name: 'Henry Yap Three', profileAvatar: ''),
    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
    date: DateFormat.yMMMd().format(DateTime.now()),
    locationRange: 5,
    messageTitle: '',
    messageDescription: '',
    postImages: [
      '',
      '',
      '',
    ],
  ),
  Post(
    id: 2,
    profile: Profile(id: 3, name: 'Lionel Messi', profileAvatar: ''),
    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
    date: DateFormat.yMMMd().format(DateTime.now()),
    locationRange: 5,
    messageTitle: '',
    messageDescription: '',
    postImages: [
      '',
      '',
      '',
    ],
  ),
  Post(
    id: 3,
    profile: Profile(id: 2, name: 'Anakin Vader', profileAvatar: ''),
    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
    date: DateFormat.yMMMd().format(DateTime.now()),
    locationRange: 5,
    messageTitle: '',
    messageDescription: '',
    postImages: [
      '',
      '',
      '',
    ],
  ),
  Post.shared(
    id: 4,
    profile: Profile(id: 4, name: 'Russy Fluffy', profileAvatar: ''),
    time: DateFormat('h:mm a').format(DateTime.now()),
    date: DateFormat.yMMMd().format(DateTime.now()),
    messageDescription: '',
    sharedPost: Post(
      id: 3,
      profile: Profile(id: 2, name: 'Anakin Vader', profileAvatar: ''),
      time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
      date: DateFormat.yMMMd().format(DateTime.now()),
      locationRange: 5,
      messageTitle: '',
      messageDescription: '',
      postImages: [
        '',
        '',
        '',
      ],
    ),
  ),
  Post.shared(
    id: 5,
    profile: Profile(id: 4, name: 'Russy Fluffy', profileAvatar: ''),
    time: DateFormat('h:mm a').format(DateTime.now()),
    date: DateFormat.yMMMd().format(DateTime.now()),
    messageDescription: '',
    sharedPost: Post(
      id: 3,
      profile: Profile(id: 2, name: 'Anakin Vader', profileAvatar: ''),
      time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
      date: DateFormat.yMMMd().format(DateTime.now()),
      locationRange: 5,
      messageTitle: '',
      messageDescription: '',
      postImages: [
        '',
        '',
        '',
      ],
    ),
  ),
];
