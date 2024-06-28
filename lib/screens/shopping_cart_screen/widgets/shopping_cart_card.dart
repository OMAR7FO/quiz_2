import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_2/core/utils/assets_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/core/widgets/circle_icon_button.dart';

class ShoppingCartCard extends StatelessWidget {
  const ShoppingCartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: DimensionsManager.widthPercentage(context, 10),
          height: DimensionsManager.heightPercentage(context, 10),
          child: Center(
            child: SvgPicture.asset(
              AssetsManager.picture,
              width: DimensionsManager.widthPercentage(context, 6),
              height: DimensionsManager.heightPercentage(context, 6),
              color: const Color(0XFFA1ABC0),
            ),
          ),
        ),
        const SizedBox(
          width: AppSize.s24,
        ),
        Column(
          children: [
            Text(
              "Bananas",
              style: StyleManager.fontMedium14,
            ),
            const SizedBox(
              height: AppSize.s4,
            ),
            Text(
              "\$7.90",
              style: StyleManager.fontRegular14,
            ),
          ],
        ),
        const Spacer(),
        CircleIconButton(
          onPressed: () {},
          icon: Icons.remove,
        ),
        const SizedBox(
          width: AppSize.s10,
        ),
        Text(
          '2',
          style: StyleManager.fontRegular14,
        ),
        const SizedBox(
          width: AppSize.s10,
        ),
        CircleIconButton(
          icon: Icons.add,
          onPressed: () {},
        ),
      ],
    );
  }
}
