import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:techread_showcase/src/components/widgets/cool_button.dart';

@widgetbook.UseCase(name: 'Cool Button', type: CoolButton)
Widget buildCoolButtonUseCase(BuildContext context) {
  return Center(
    child: CoolButton(
      label: context.knobs.string(label: 'Name', initialValue: 'Read More'),
      isFilled: context.knobs.boolean(label: 'Is Filled', initialValue: true),
      onPressed: () {},
    ),
  );
}
