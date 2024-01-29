class PostImage {
  int rank;
  String url;
  String contentType;

  PostImage({
    required this.rank,
    required this.url,
    required this.contentType,
  });

  factory PostImage.fromJson(Map<String, dynamic> json) {
    return PostImage(
      rank: json["rank"] as int,
      url: json["url"] as String,
      contentType: json["content_type"] as String,
    );
  }
}
