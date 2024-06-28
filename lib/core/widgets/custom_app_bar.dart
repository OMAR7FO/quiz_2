import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

//Todo remove this widget to each screen
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.flexibleSpace,
    this.backgroundColor = ColorManager.primaryColorLight,
    this.appBarHeightPercentage = 27,
    this.leading,
    this.backgroundIcon,
    this.padding = const EdgeInsets.only(
      left: AppPadding.p20,
      right: AppPadding.p20,
    ),
  });
  final List<Widget>? actions;
  final Widget? flexibleSpace;
  final double appBarHeightPercentage;
  final Color backgroundColor;
  final Widget? leading;
  final EdgeInsetsGeometry padding;
  final Widget? backgroundIcon;

  final Widget title;
  @override
  Widget build(BuildContext context) {
    final appBarHeight =
        DimensionsManager.heightPercentage(context, appBarHeightPercentage);
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    return SliverAppBar(
      pinned: true,
      floating: true,
      snap: true,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      expandedHeight: appBarHeight,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.only(
          left: AppPadding.p20,
          right: AppPadding.p16,
        ),
        child: Row(
          children: [
            if (leading != null)
              Row(
                children: [
                  leading!,
                  const SizedBox(
                    width: 21,
                  )
                ],
              ),
            title,
            const Spacer(),
            actions != null
                ? Row(
                    children: actions!,
                  )
                : const SizedBox(),
          ],
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: padding,
          child: Stack(
            children: [
              if (backgroundIcon != null)
                Positioned(top: -75, child: backgroundIcon!),
              Positioned(
                width: DimensionsManager.widthPercentage(context, 100) -
                    padding.horizontal,
                height: appBarHeight -
                    (kBottomNavigationBarHeight + 35 + -statusBarHeight),
                top: kBottomNavigationBarHeight + 35,
                child: flexibleSpace!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
