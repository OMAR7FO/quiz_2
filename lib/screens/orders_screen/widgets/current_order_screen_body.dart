import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/screens/orders_screen/widgets/product_price_and_id.dart';
import 'package:quiz_2/screens/orders_screen/widgets/rider_details.dart';
import 'package:quiz_2/screens/orders_screen/widgets/track_order.dart';

class CurrentOrderScreenBody extends StatelessWidget {
  const CurrentOrderScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p20,
        vertical: AppPadding.p20,
      ),
      child: ListView.separated(
        itemBuilder: (context, index) => const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductPriceAndId(),
            SizedBox(
              height: AppSize.s10,
            ),
            Row(
              children: [
                Expanded(
                  child: RiderDetails(),
                ),
                SizedBox(
                  width: AppSize.s10,
                ),
                Expanded(
                  child: TrackOrder(),
                ),
              ],
            ),
          ],
        ),
        separatorBuilder: (context, index) => const Divider(
          height: 50,
        ),
        itemCount: 20,
        shrinkWrap: true,
      ),
    );
  }
}
