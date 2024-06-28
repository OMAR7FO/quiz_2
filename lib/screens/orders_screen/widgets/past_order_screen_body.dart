import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/screens/orders_screen/widgets/past_order.dart';

class PastOrdersScreenBody extends StatelessWidget {
  const PastOrdersScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p20,
        vertical: AppPadding.p20,
      ),
      child: ListView.separated(
        itemBuilder: (context, index) => const PastOrders(),
        separatorBuilder: (context, index) => const Divider(
          height: 50,
        ),
        itemCount: 20,
        shrinkWrap: true,
      ),
    );
  }
}
