import 'package:flutter/material.dart';
import 'package:techread_showcase/src/components/widgets/article_list_card.dart';
import 'package:techread_showcase/src/components/widgets/featured_article.dart';
import 'package:techread_showcase/src/data/mock_data.dart';
import 'package:techread_showcase/src/models/article_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedFilter = 'Featured';
  @override
  Widget build(BuildContext context) {
    final ArticleModel featuredArticle = mockArticleModels[0];
    final List<ArticleModel> allArticles = mockArticleModels.sublist(1);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('TechRead Showcase'),

        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search tap
            },
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildSearchBar(),
          const SizedBox(height: 20),

          // Other widgets can be added here
          _buildFilterChips(),
          const SizedBox(height: 24),

          _buildSectionHeader('Featured Article'),
          const SizedBox(height: 16),

          FeaturedArticleCard(article: featuredArticle),

          const SizedBox(height: 30),

          _buildSectionHeader('All Articles'),

          ListView.separated(
            shrinkWrap: true, // Important inside another ListView
            physics:
                const NeverScrollableScrollPhysics(), // Let parent ListView scroll
            itemCount: allArticles.length,
            itemBuilder: (context, index) {
              return ArticleListCard(article: allArticles[index]);
            },
            separatorBuilder: (context, index) => const SizedBox(height: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search articles, topics, or authors...',
          prefixIcon: const Icon(Icons.search),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[50],
        ),
        onChanged: (value) {
          // Handle search input change
        },
      ),
    );
  }

  Widget _buildFilterChips() {
    final filters = ['All', 'Featured', 'AI', 'Flutter', 'Web Dev'];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children:
            filters.map((filter) {
              bool isSelected = _selectedFilter == filter;
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ChoiceChip(
                  label: Text(filter),
                  selected: false,
                  onSelected: (selected) {
                    // Handle filter selection
                    setState(() {
                      // Update selected filter state
                      _selectedFilter = filter;
                    });
                  },
                  backgroundColor: Colors.grey[100],
                  selectedColor: Colors.blue[800],
                  labelStyle: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: isSelected ? Colors.blue[800]! : Colors.grey[200]!,
                    ),
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
