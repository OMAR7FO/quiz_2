import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
    required this.onPressed,
    required this.width,
    required this.text,
  });
  final double width;
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.white,
      minWidth: width,
      height: 70,
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: StyleManager.fontSemiBold16,
          ),
          const SizedBox(
            width: AppSize.s40,
          ),
          const Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
