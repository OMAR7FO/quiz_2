import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/widgets/custom_app_bar.dart';
import 'package:quiz_2/core/widgets/notification_icon.dart';

class CategoriesAppBar extends StatelessWidget {
  const CategoriesAppBar({
    super.key,
    required this.searchOnPressed,
  });
  final void Function()? searchOnPressed;
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Text(
        "Hey, Omar",
        style: StyleManager.fontSemiBold22,
      ),
      actions: [
        IconButton(
          onPressed: searchOnPressed,
          icon: const Icon(
            Icons.search_outlined,
            color: ColorManager.myWhite,
          ),
        ),
        const SizedBox(
          width: 35,
        ),
        const NotifictionIcon(),
      ],
      flexibleSpace: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shop",
            style: StyleManager.fontLight50.copyWith(
              color: ColorManager.myWhite,
              height: 1,
            ),
          ),
          Text(
            "By Category",
            style: StyleManager.fontExtraBold50.copyWith(
              color: ColorManager.myWhite,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
