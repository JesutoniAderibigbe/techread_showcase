import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:techread_showcase/src/ui/articles_detail_screen.dart';
import 'package:widgetbook_workspace/article_model.dart';
import 'package:widgetbook_workspace/mock_data.dart';

@widgetbook.UseCase(name: 'Article Detail Screen', type: ArticleDetailScreen)

Widget articleDetailScreen(BuildContext context) {
  final article = mockArticleModels.sublist(1).first;
  return ArticleDetailScreen(
    article: article,
  );
}