import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/style_manager.dart';

class CartDescription extends StatelessWidget {
  const CartDescription({
    super.key,
    required this.label,
    required this.price,
  });
  final String label;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: StyleManager.fontRegular14.copyWith(
            color: const Color(0XFF616A7D),
          ),
        ),
        const Spacer(),
        Text(
          "\$$price",
          style: StyleManager.fontMedium14,
        )
      ],
    );
  }
}
