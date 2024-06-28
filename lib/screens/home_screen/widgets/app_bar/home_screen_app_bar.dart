import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/widgets/custom_app_bar.dart';
import 'package:quiz_2/core/widgets/notification_icon.dart';
import 'package:quiz_2/screens/home_screen/widgets/app_bar/app_bar_drop_down.dart';
import 'package:quiz_2/screens/home_screen/widgets/app_bar/app_bar_text_field.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      actions: const [NotifictionIcon()],
      title: Text(
        "Hey, Omar",
        style: StyleManager.fontSemiBold22,
      ),
      flexibleSpace: Column(
        children: [
          const AppBarTextField(
            hintText: StringManager.searchHintTextHomeAppBar,
            prefixIcon: Icons.search_outlined,
          ),
          const Spacer(),
          Row(
            children: [
              AppBarDropDownButton(
                label: StringManager.deliveryTo,
                icon: Icons.arrow_back_ios_new,
                items: List.generate(
                  StringManager.deliverToHomeAppBar.length,
                  (index) => DropdownMenuItem(
                    value: index,
                    child: Text(
                      StringManager.deliverToHomeAppBar[index],
                      style: StyleManager.fontMedium14.copyWith(
                        color: ColorManager.myWhite,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              AppBarDropDownButton(
                label: StringManager.within,
                icon: Icons.arrow_back_ios_new,
                items: List.generate(
                  StringManager.withinHomeAppBar.length,
                  (index) => DropdownMenuItem(
                    value: index,
                    child: Text(
                      StringManager.withinHomeAppBar[index],
                      style: StyleManager.fontMedium14.copyWith(
                        color: ColorManager.myWhite,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
