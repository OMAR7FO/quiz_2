import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_2/core/utils/assets_manager.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

class PastOrders extends StatelessWidget {
  const PastOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsManager.heightPercentage(context, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              const Spacer(),
              Text(
                "02/10/2021",
                style: StyleManager.fontRegular14
                    .copyWith(color: ColorManager.greyFontColor),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              const SizedBox(
                height: AppSize.s10,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: StringManager.id,
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
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p12, vertical: 5),
                color: ColorManager.primaryColorLight.withOpacity(.1),
                child: Text(
                  StringManager.success,
                  style: StyleManager.fontMedium13.copyWith(
                    color: ColorManager.primaryColorLight,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
