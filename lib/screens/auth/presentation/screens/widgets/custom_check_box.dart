import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
    required this.label,
  });
  final String label;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: _checkBoxValue,
          onChanged: (value) {
            setState(
              () {
                _checkBoxValue = value!;
              },
            );
          },
          activeColor: ColorManager.primaryColorDark,
        ),
        Text(
          'Remember me',
          style: StyleManager.fontMedium14,
        ),
      ],
    );
  }
}
