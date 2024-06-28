import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: StyleManager.fontSemiBold13
              .copyWith(color: const Color(0XFF8891A5)),
        ),
        TextFormField(
          cursorColor: ColorManager.primaryColorDark,
          decoration: InputDecoration(
            enabledBorder: _buildBorder(),
            focusedBorder: _buildBorder(),
          ),
        ),
      ],
    );
  }

  _buildBorder() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0XFFE9EAF4),
      ),
    );
  }
}
