import 'package:flutter/material.dart';
import 'package:techread_showcase/src/models/article_model.dart';

//Mock Data that shows the list of ArticleModels using the ArticleModel model

final List<ArticleModel> mockArticleModels = [
  ArticleModel(
    category: 'Artificial Intelligence',
    title: 'The Quantum Leap: How AI is Reshaping Mobile Development',
    author: 'Jane Doe',
    readTime: '8 min read',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp8xPDtLsGJKzEJLEXS2-7iiXkftatEti1HXnkNuN1rBYTZ-ckb2ZYQGIObKctkn5TIxk&usqp=CAU',
  ),
  ArticleModel(
    category: 'Flutter',
    title: '5 Best Practices for State Management in Flutter',
    author: 'John Smith',
    readTime: '5 min read',
    imageUrl:
        'https://cdn.shopaccino.com/igmguru/products/flutter-igmguru_1527424732_l.jpg?v=532',
  ),
  ArticleModel(
    category: 'Web Dev',
    title: 'The Rise of Server-Side Rendering in Modern Frameworks',
    author: 'Alex Johnson',
    readTime: '10 min read',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx3qEToYKdCNo7h7WiEc191etn-rxUBm6cXw&s',
  ),
  ArticleModel(
    category: 'Cybersecurity',
    title: 'Protecting Your Digital Fortress: 2024\'s Top Threats',
    author: 'Maria Garcia',
    readTime: '7 min read',
    imageUrl:
        'https://imageio.forbes.com/specials-images/imageserve/65c142395e334b20dda96ce2/Digital-data-security-padlock-on-futuristic-circuit-board/960x0.jpg?format=jpg&width=960',
  ),
];
