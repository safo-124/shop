class Categories {
  final String title;
  final int id;
  final String imageUrl;

  Categories({
    required this.title,
    required this.id,
    required this.imageUrl,
  });

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        title: json["title"],
        id: json["id"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() =>
      {"title": title, "id": id, "imageUrl": imageUrl};
}
