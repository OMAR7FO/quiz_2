import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:quiz_2/core/utils/style_manager.dart";
import "package:quiz_2/core/utils/values_manager.dart";
import "package:quiz_2/core/widgets/circle_icon_button.dart";

AppBar buildAppBar(BuildContext context,
    {String? title,
    IconData? leadingIcon,
    List<Widget> actions = const [],
    PreferredSizeWidget? bottom}) {
  return AppBar(
    titleSpacing: 0,
    automaticallyImplyLeading: false,
    title: Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p20,
        right: AppPadding.p16,
      ),
      child: Row(
        children: [
          if (leadingIcon != null)
            Row(
              children: [
                CircleIconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: leadingIcon,
                ),
                const SizedBox(
                  width: 21,
                )
              ],
            ),
          if (title != null)
            Text(
              title,
              style: StyleManager.fontRegular14,
            ),
          const Spacer(),
          ...actions
        ],
      ),
    ),
    bottom: bottom,
  );
}
