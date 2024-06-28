import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_2/core/utils/app_router.dart';
import 'package:quiz_2/core/utils/color_manager.dart';

class NotifictionIcon extends StatelessWidget {
  const NotifictionIcon({
    super.key,
    this.iconColor = ColorManager.myWhite,
  });
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kOfferShoppingCart);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(
            Icons.shopping_bag_outlined,
            color: iconColor,
          ),
          const Positioned(
            top: -5,
            left: 12,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: ColorManager.secondaryColorLight,
              child: Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
