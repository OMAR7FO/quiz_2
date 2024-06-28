import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
class SeeMoreText extends StatefulWidget {
  const SeeMoreText({
    super.key,
    required this.label,
    required this.description,
  });
  final String label;
  final String description;
  @override
  State<SeeMoreText> createState() => _SeeMoreTextState();
}

class _SeeMoreTextState extends State<SeeMoreText> {
  bool isVisible = false;
  int turns = 3;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.label,
              style: StyleManager.fontRegular16.copyWith(
                color: ColorManager.primaryFontColor,
                fontSize: 20,
              ),
            ),
            const Spacer(),
            RotatedBox(
              quarterTurns: turns,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                    isVisible ? turns = 1 : turns = 3;
                  });
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0XFFB2BBCE),
                  size: 18,
                ),
              ),
            )
          ],
        ),
        Visibility(
          visible: isVisible,
          child: Column(
            children: [
              const SizedBox(
                height: AppSize.s6,
              ),
              Text(
                widget.description,
                style: StyleManager.fontRegular16.copyWith(
                  color: const Color(0XFF8891A5),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: Color(0XFFB2BBCE),
        )
      ],
    );
  }
}
