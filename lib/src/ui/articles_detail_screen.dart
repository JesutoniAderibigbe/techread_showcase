import 'package:flutter/material.dart';

import 'package:techread_showcase/src/models/article_model.dart';

class ArticleDetailScreen extends StatelessWidget {
  final ArticleModel article;

  const ArticleDetailScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    // Mock content for the article body
    const String articleBodyP1 =
        'An introductory paragraph about the current state of technology. It sets the stage for the reader, providing context and highlighting the key themes that will be explored throughout the article.';
    const String articleBodyP2 =
        'This section delves into the technical specifics of the new quantum processors. We explore how qubits are leveraged to perform complex calculations at speeds previously unimaginable, fundamentally changing the landscape of mobile processing power.';
    const String articleBodyP3 =
        'With great power comes new possibilities. This final section discusses the potential applications, from real-time language translation to advanced AI assistants, that this technological leap will enable in the next generation of smartphones and wearables.';

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // 1. App Bar with Image
          SliverAppBar(
            expandedHeight: 275.0,
            backgroundColor: Colors.white,
            elevation: 0,
            pinned: true,
            stretch: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.share, color: Colors.black),
                onPressed: () {
                  // Handle share
                },
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              
              stretchModes: const [StretchMode.zoomBackground],
              background: Image.network(
                article.imageUrl, // Use the article's image
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 2. Article Content
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      // The title in the image is different, but we'll use our article data
                      article.title,
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Author and Date
                    Text(
                      'By ${article.author} - October 26, 2023', // Using mock date from image
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                        fontFamily: 'Inter',
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Body Paragraph 1
                    _buildArticleBodyText(articleBodyP1),
                    const SizedBox(height: 20),
                    // Subheading 1
                    _buildArticleSubheading(
                      'Breaking Down the Core Architecture',
                    ),
                    const SizedBox(height: 12),
                    _buildArticleBodyText(articleBodyP2),
                    const SizedBox(height: 20),
                    // Subheading 2
                    _buildArticleSubheading('Implications for Future Devices'),
                    const SizedBox(height: 12),
                    _buildArticleBodyText(articleBodyP3),
                    const SizedBox(height: 100), // Padding for bottom bar
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      // 3. Bottom Button Bar
      bottomNavigationBar: _buildBottomButtonBar(context),
    );
  }

  // Helper for article body text
  Widget _buildArticleBodyText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey[800],
        height: 1.6, // Line height
        fontFamily: 'Inter',
      ),
    );
  }

  // Helper for article subheadings
  Widget _buildArticleSubheading(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Inter',
      ),
    );
  }

  // Helper for the bottom button bar
  Widget _buildBottomButtonBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ).copyWith(bottom: MediaQuery.of(context).padding.bottom + 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey[200]!, width: 1.0)),
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                // Handle Bookmark
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                side: BorderSide(color: Colors.blue[800]!),
              ),
              child: Text(
                'Bookmark',
                style: TextStyle(
                  color: Colors.blue[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                // Handle Read More
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[800],
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 0,
              ),
              child: const Text(
                'Read More',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
