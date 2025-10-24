// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _widgetbook;
import 'package:widgetbook_workspace/article_detail_screen.dart'
    as _widgetbook_workspace_article_detail_screen;
import 'package:widgetbook_workspace/home_screen_component.dart'
    as _widgetbook_workspace_home_screen_component;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'ui',
    children: [
      _widgetbook.WidgetbookComponent(
        name: 'ArticleDetailScreen',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Article Detail Screen',
            builder:
                _widgetbook_workspace_article_detail_screen.articleDetailScreen,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'HomePage',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default Home Screen',
            builder:
                _widgetbook_workspace_home_screen_component.defaultHomeScreen,
          ),
        ],
      ),
    ],
  ),
];
