import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

class SelectionBox extends StatelessWidget {
  const SelectionBox({
    super.key,
    required this.titel2,
    required this.isSelected,
    required this.title1,
    required this.onPressed,
  });
  final String title1;
  final String titel2;
  final bool isSelected;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(AppPadding.p20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: isSelected ? 2 : 1,
            color: isSelected
                ? ColorManager.secondaryColorDark
                : ColorManager.lightGrey,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Home",
                  style: StyleManager.fontRegular14,
                ),
                const Spacer(),
                isSelected
                    ? const CircleAvatar(
                        backgroundColor: ColorManager.secondaryColorDark,
                        radius: 10,
                        child: Icon(
                          Icons.check,
                          size: 14,
                          color: ColorManager.primaryFontColor,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            const SizedBox(
              height: AppSize.s14,
            ),
            Row(
              children: [
                Text(
                  '36 green way, Sunamganj',
                  style: StyleManager.fontSemiBold16.copyWith(
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Text(
                    StringManager.edit,
                    style: StyleManager.fontLight12,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
