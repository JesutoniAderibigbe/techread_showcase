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
}
