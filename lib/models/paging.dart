class Paging {
  int page;
  int items;
  int count;

  Paging({
    required this.page,
    required this.items,
    required this.count,
  });

  factory Paging.fromJson(Map<String, dynamic> json) {
    return Paging(
      page: json["page"] as int,
      items: json["items"] as int,
      count: json["count"] as int,
    );
  }
}
