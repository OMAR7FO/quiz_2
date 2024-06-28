import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 24,
        height: 24,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: ColorManager.primaryColorLight,
        ),
        child: const Icon(
          Icons.add,
          size: 12,
          color: ColorManager.myWhite,
        ),
      ),
    );
  }
}
