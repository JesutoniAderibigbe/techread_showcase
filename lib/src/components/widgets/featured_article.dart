import 'package:flutter/material.dart';
import 'package:techread_showcase/src/models/article_model.dart';
import 'package:techread_showcase/src/ui/articles_detail_screen.dart';

class FeaturedArticleCard extends StatefulWidget {
  final ArticleModel article;
  const FeaturedArticleCard({super.key, required this.article});

  @override
  State<FeaturedArticleCard> createState() => _FeaturedArticleCardState();
}

class _FeaturedArticleCardState extends State<FeaturedArticleCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ArticleDetailScreen(article: widget.article),
          ),
        );
      },
      child: Card(
        elevation: 10, // Design looks flat
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        clipBehavior: Clip.antiAlias, // Clips the image to the border radius
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16.0),
              ),
              child: Image.network(
                widget.article.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Category
                  Text(
                    widget.article.category.toUpperCase(),
                    style: TextStyle(
                      color: Colors.blue[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Title
                  Text(
                    widget.article.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Author Info
                  _buildAuthorInfo(context, widget.article),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper widget for author row to avoid repetition
  Widget _buildAuthorInfo(BuildContext context, ArticleModel article) {
    return Row(
      children: [
        Text(
          'By ${article.author}',
          style: TextStyle(color: Colors.grey[700], fontSize: 13),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Icon(Icons.circle, size: 4, color: Colors.grey[400]),
        ),
        Text(
          article.readTime,
          style: TextStyle(color: Colors.grey[700], fontSize: 13),
        ),
      ],
    );
  }
}
