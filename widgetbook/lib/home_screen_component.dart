import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:techread_showcase/src/ui/home_screen.dart';

@widgetbook.UseCase(name: 'Default Home Screen', type: HomePage)
Widget defaultHomeScreen(BuildContext context) {
  return HomePage();
}