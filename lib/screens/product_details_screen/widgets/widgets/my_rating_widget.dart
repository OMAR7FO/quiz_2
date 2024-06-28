import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

class MyRatingWidget extends StatelessWidget {
  const MyRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          itemSize: 18,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.only(right: 4),
          unratedColor: Colors.black,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: ColorManager.ratingColor,
          ),
          onRatingUpdate: (rating) {},
        ),
        const SizedBox(
          width: AppSize.s4,
        ),
        Text(
          '110 Reviews',
          style: StyleManager.fontMedium14.copyWith(
            color: ColorManager.greyBackground,
          ),
        )
      ],
    );
  }
}
