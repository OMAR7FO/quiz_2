import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton(
      {super.key, required this.onPressed, required this.icon});
  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          color: Color(0XFFF8F9FB),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 12,
          color: const Color(0XFF130F26),
        ),
      ),
    );
  }
}
