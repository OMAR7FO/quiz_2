import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.isActive,
    required this.label,
  });
  final bool isActive;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppPadding.p12),
        decoration: BoxDecoration(
          color:
              isActive ? ColorManager.secondaryColorDark : ColorManager.white,
          borderRadius: BorderRadius.circular(30),
          border:
              isActive ? null : Border.all(color: ColorManager.greyBackground),
        ),
        child: Center(
          child: Text(
            label,
            style: StyleManager.fontSemiBold14.copyWith(
              color:
                  isActive ? ColorManager.white : ColorManager.greyFontColor2,
            ),
          ),
        ),
      ),
    );
  }
}
