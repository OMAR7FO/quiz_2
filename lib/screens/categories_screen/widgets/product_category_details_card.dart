import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_2/core/utils/assets_manager.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

class ProdcutCategoryDetailsCard extends StatelessWidget {
  const ProdcutCategoryDetailsCard({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: DimensionsManager.heightPercentage(context, 22),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.secondaryColorLight,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: SvgPicture.asset(AssetsManager.picture),
                ),
              ),
            ),
            const SizedBox(
              width: AppSize.s16,
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: AppPadding.p10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Big & Small Fishes",
                      style: StyleManager.fontBold18,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Fresh from sea",
                      style: StyleManager.fontRegular14.copyWith(
                        color: const Color(0XFF616A7D),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Starting from',
                      style: StyleManager.fontRegular14
                          .copyWith(color: ColorManager.greyFontColor),
                    ),
                    const SizedBox(
                      height: AppSize.s10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '\$36',
                          style: StyleManager.fontBold16,
                        ),
                        TextSpan(
                          text: "/KG",
                          style: StyleManager.fontRegular16.copyWith(
                            color: ColorManager.primaryColorLight,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
