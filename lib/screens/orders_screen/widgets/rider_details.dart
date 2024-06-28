import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_2/core/utils/assets_manager.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

class RiderDetails extends StatelessWidget {
  const RiderDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Image.asset(AssetsManager.truckPhoto),
            Positioned(
              bottom: -15,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0XFFEDEDED),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AssetsManager.picture,
                    color: ColorManager.lightGrey,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.s14,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Meet our rider,',
                style: StyleManager.fontRegular12.copyWith(
                  color: ColorManager.greyFontColor2.withOpacity(.5),
                ),
              ),
              TextSpan(
                text: ' Rakib',
                style: StyleManager.fontRegular12,
              )
            ],
          ),
        )
      ],
    );
  }
}
