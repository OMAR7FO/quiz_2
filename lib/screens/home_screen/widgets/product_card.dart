import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_2/core/utils/app_router.dart';
import 'package:quiz_2/core/utils/assets_manager.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/screens/home_screen/widgets/circle_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        int index = Random().nextInt(2);
        List<String> screens = [
          AppRouter.kProductDetails,
          AppRouter.kProductDetails2
        ];
        GoRouter.of(context).push(screens[index]);
      },
      child: Container(
        width: DimensionsManager.widthPercentage(context, 45),
        height: DimensionsManager.heightPercentage(context, 28),
        decoration: BoxDecoration(
          color: ColorManager.greyBackground.withOpacity(.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        AssetsManager.picture,
                        color: ColorManager.lightGrey,
                      ),
                      const Positioned(
                        bottom: 0,
                        right: 2,
                        child: CircleButton(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.s12,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$325",
                      style: StyleManager.fontSemiBold14,
                    ),
                    Text(
                      "Orange Package 1 |\n 1 bundle",
                      style: StyleManager.fontRegular12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
