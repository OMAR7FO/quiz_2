import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

class CategorySelectionBox extends StatelessWidget {
  const CategorySelectionBox({
    super.key,
    required this.categoryName,
    required this.onPressed,
    required this.isSelected,
  });
  final String categoryName;
  final bool isSelected;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected
              ? ColorManager.secondaryColorDark
              : ColorManager.myWhite,
          border:
              isSelected ? null : Border.all(color: const Color(0XFFB2BBCE)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p16,
            vertical: AppPadding.p8,
          ),
          child: Text(
            categoryName,
            style: StyleManager.fontSemiBold16.copyWith(
              color:
                  isSelected ? ColorManager.myWhite : const Color(0XFF616A7D),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
