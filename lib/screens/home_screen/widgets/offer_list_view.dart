import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/assets_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/screens/home_screen/widgets/sale_card.dart';

class OfferListView extends StatelessWidget {
  const OfferListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => SaleCard(
        salePercentage: Random().nextInt(100).toString(),
        image: AssetsManager.picture,
      ),
      separatorBuilder: (context, index) => const SizedBox(
        width: AppSize.s18,
      ),
      itemCount: 10,
      scrollDirection: Axis.horizontal,
    );
  }
}
