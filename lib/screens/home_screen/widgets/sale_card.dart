import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';

class SaleCard extends StatelessWidget {
  const SaleCard({
    super.key,
    required this.salePercentage,
    required this.image,
  });
  final String salePercentage;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: DimensionsManager.heightPercentage(context, 18),
      width: DimensionsManager.widthPercentage(context, 70),
      decoration: BoxDecoration(
        color: ColorManager.secondaryColorDark,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SvgPicture.asset(
              image,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Get",
                  style: StyleManager.fontLight20,
                ),
                Text(
                  "$salePercentage%  OFF",
                  style: StyleManager.fontExtraBold26.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "On first 03 order",
                  style: StyleManager.fontMedium13,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
