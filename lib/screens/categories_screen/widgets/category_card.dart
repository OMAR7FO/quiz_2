import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_2/core/utils/assets_manager.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DimensionsManager.widthPercentage(context, 45),
      height: DimensionsManager.heightPercentage(context, 20),
      decoration: BoxDecoration(
        color: ColorManager.greyBackground.withOpacity(.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: SvgPicture.asset(
              AssetsManager.picture,
              color: ColorManager.lightGrey,
            ),
          ),
          const Divider(
            thickness: 0.5,
            indent: 30,
            endIndent: 30,
            color: ColorManager.darkGrey,
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  "Fishes",
                  style: StyleManager.fontSemiBold13,
                ),
                Text(
                  "From Sea",
                  style: StyleManager.fontRegular12,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
