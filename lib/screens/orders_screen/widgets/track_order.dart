import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Oranges",
          style: StyleManager.fontRegular20,
        ),
        Text(
          "are on the way",
          style: StyleManager.fontBold20,
        ),
        const SizedBox(
          height: AppSize.s14,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.primaryColorLight,
            padding: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Text(
            "Track Order",
            style: StyleManager.fontSemiBold14.copyWith(
              color: ColorManager.white,
            ),
          ),
        ),
      ],
    );
  }
}
