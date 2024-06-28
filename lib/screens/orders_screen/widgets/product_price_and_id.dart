import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_2/core/utils/assets_manager.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

class ProductPriceAndId extends StatelessWidget {
  const ProductPriceAndId({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AssetsManager.picture,
          color: ColorManager.lightGrey,
          width: 50,
          height: 50,
        ),
        const SizedBox(
          width: AppSize.s16,
        ),
        Column(
          children: [
            Text(
              "Bananas",
              style: StyleManager.fontRegular14
                  .copyWith(color: ColorManager.greyFontColor2),
            ),
            Text(
              "\$7.90",
              style: StyleManager.fontSemiBold16.copyWith(
                color: ColorManager.black,
              ),
            ),
          ],
        ),
        const Spacer(),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "ID:",
                style: StyleManager.fontRegular14.copyWith(
                  color: ColorManager.lightGrey,
                ),
              ),
              TextSpan(
                text: "#765433",
                style: StyleManager.fontRegular14.copyWith(
                  color: ColorManager.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
