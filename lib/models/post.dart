import 'package:intl/intl.dart';
import 'package:greenit_app/models/post_image.dart';
import 'package:greenit_app/models/user.dart';

class Post {
  int id;
  String title;
  String body;
  double latitude;
  double longitude;
  User author;
  List<PostImage>? images;
  DateTime createdAt;
  DateTime updatedAt;

  Post({
    required this.id,
    required this.title,
    required this.body,
    required this.latitude,
    required this.longitude,
    required this.author,
    this.images,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    var imagesJson = (json["images"] != null) ? json["images"] : [];
    var mappedImagesJson =
        imagesJson.map((json) => PostImage.fromJson(json)).toList();
    List<PostImage> images = [...mappedImagesJson];
    images.sort((a, b) => a.rank.compareTo(b.rank));

    return Post(
      id: json["id"] as int,
      title: json["title"] as String,
      body: json["body"] as String,
      latitude: json["latitude"] as double,
      longitude: json["longitude"] as double,
      author: User.fromJson(json['author']),
      images: images,
      createdAt: DateTime.parse(json['created_at'].toString()),
      updatedAt: DateTime.parse(json['updated_at'].toString()),
    );
  }

  String get formattedDate {
    return DateFormat('MMM d, yyyy').format(createdAt);
  }

  String get formattedTime {
    return DateFormat('HH:mm a').format(createdAt);
  }
}
