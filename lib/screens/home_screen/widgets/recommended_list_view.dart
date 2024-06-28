import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/screens/home_screen/widgets/reccomended_card.dart';

class RecommendedListView extends StatelessWidget {
  const RecommendedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsManager.heightPercentage(context, 28),
      child: ListView.separated(
        itemBuilder: (context, index) => const RecommendedCard(),
        separatorBuilder: (context, index) => const SizedBox(
          width: AppSize.s20,
        ),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
