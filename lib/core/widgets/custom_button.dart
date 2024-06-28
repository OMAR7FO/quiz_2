import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.withBorder,
      required this.labelColor,
      required this.onPressed,
      required this.label});
  final Color backgroundColor;
  final bool withBorder;
  final String label;
  final Color labelColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: const WidgetStatePropertyAll(Size(150, 54)),
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            side: withBorder
                ? const BorderSide(
                    strokeAlign: BorderSide.strokeAlignOutside,
                    width: 1,
                    color: ColorManager.primaryColorLight,
                  )
                : BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: Text(
        label,
        style: StyleManager.fontSemiBold16.copyWith(
          color: labelColor,
        ),
      ),
    );
  }
}
