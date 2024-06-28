import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_2/core/utils/assets_manager.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/screens/home_screen/widgets/circle_button.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DimensionsManager.widthPercentage(context, 40),
      height: DimensionsManager.heightPercentage(context, 28),
      decoration: BoxDecoration(
        color: ColorManager.greyBackground.withOpacity(.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: SvgPicture.asset(
                AssetsManager.picture,
                color: ColorManager.lightGrey,
              ),
            ),
            const Divider(
              thickness: 0.5,
              color: ColorManager.darkGrey,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fresh Lemon',
                    style: StyleManager.fontSemiBold16,
                    maxLines: 1,
                  ),
                  Text(
                    "Organic",
                    style: StyleManager.fontRegular12.copyWith(
                      color: ColorManager.greyFontColor2,
                      letterSpacing: 2,
                    ),
                    maxLines: 1,
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        children: [
                          Text(
                            "Unit",
                            style: StyleManager.fontRegular12,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "\$12",
                            style: StyleManager.fontSemiBold14,
                            maxLines: 1,
                          ),
                          const Spacer(),
                          const CircleButton()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
