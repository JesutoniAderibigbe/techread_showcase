import 'package:flutter/material.dart';

import 'package:techread_showcase/src/models/article_model.dart';

// A dedicated widget for the smaller article cards in the list.
class ArticleListCard extends StatelessWidget {
  final ArticleModel article;

  const ArticleListCard({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.network(
            article.imageUrl,
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        // Text Content (expanded to take remaining space)
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category
              Text(
                article.category.toUpperCase(),
                style: TextStyle(
                  color: _getCategoryColor(article.category),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 6),
              // Title
              Text(
                article.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600, // Semibold
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              // Author Info
              _buildAuthorInfo(context, article),
            ],
          ),
        ),
      ],
    );
  }

  // Helper to get category color
  Color _getCategoryColor(String category) {
    switch (category) {
      case 'Flutter':
        return Colors.blue[700]!;
      case 'Web Dev':
        return Colors.green[700]!;
      case 'Cybersecurity':
        return Colors.red[700]!;
      default:
        return Colors.grey[800]!;
    }
  }
}

// Re-using the same author info helper (or it could be in a shared file)
Widget _buildAuthorInfo(BuildContext context, ArticleModel article) {
  return Row(
    children: [
      Text(
        'By ${article.author}',
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 13,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Icon(
          Icons.circle,
          size: 4,
          color: Colors.grey[400],
        ),
      ),
      Text(
        article.readTime,
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 13,
        ),
      ),
    ],
  );
}
