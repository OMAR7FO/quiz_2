import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/screens/home_screen/widgets/product_card.dart';

class ProductCardGridView extends StatelessWidget {
  const ProductCardGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSize.s16,
        crossAxisSpacing: AppSize.s12,
        mainAxisExtent: DimensionsManager.heightPercentage(context, 28),
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const ProductCard(),
      itemCount: 30,
    );
  }
}
