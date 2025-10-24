class ArticleModel {
  final String category;
  final String title;
  final String author;
  final String readTime;
  //final String content;
  final String imageUrl;
  //  final DateTime publishedAt;

  ArticleModel({
    required this.category,
    required this.title,
    required this.readTime,
    // required this.content,
    required this.author,
    required this.imageUrl,
  });

  // factory ArticleModel.fromJson(Map<String, dynamic> json) {
  //   return ArticleModel(
  //     id: json['id'],
  //     title: json['title'],
  //     content: json['content'],
  //     publishedAt: DateTime.parse(json['publishedAt']),
  //   );
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'title': title,
  //     'content': content,
  //     'publishedAt': publishedAt.toIso8601String(),
  //   };
  // }
}
