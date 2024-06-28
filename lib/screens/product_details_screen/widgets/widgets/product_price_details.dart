import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

class ProductPriceDetails extends StatelessWidget {
  const ProductPriceDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '\$34.70',
                style: StyleManager.fontBold16.copyWith(
                  color: ColorManager.primaryColorLight,
                ),
              ),
              TextSpan(
                text: '/KG',
                style: StyleManager.fontRegular16.copyWith(
                  color: ColorManager.primaryColorLight,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: AppSize.s14,
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorManager.primaryColorLight,
            borderRadius: BorderRadius.circular(70),
          ),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          child: Text(
            '\$22.04 OFF',
            style: StyleManager.fontRegular12.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        const Spacer(),
        Text(
          'Reg: \$56.70 USD',
          style: StyleManager.fontMedium14.copyWith(
            color: ColorManager.greyBackground,
          ),
        ),
      ],
    );
  }
}
