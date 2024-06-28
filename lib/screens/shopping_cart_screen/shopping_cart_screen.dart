import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

import 'package:quiz_2/core/widgets/normal_app_bar.dart';
import 'package:quiz_2/core/widgets/process_to_check_out_card.dart';
import 'package:quiz_2/screens/shopping_cart_screen/widgets/shopping_cart_card.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "${StringManager.shoppingCart} (5)",
        leadingIcon: Icons.arrow_back_ios_new,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          ListView.separated(
            padding: EdgeInsets.only(
                left: AppPadding.p30,
                right: AppPadding.p30,
                top: AppPadding.p10,
                bottom: DimensionsManager.heightPercentage(context, 30)),
            itemBuilder: (context, index) => const ShoppingCartCard(),
            separatorBuilder: (context, index) => const Divider(
              color: Color(0XFFEBEBFB),
            ),
            itemCount: 20,
            shrinkWrap: true,
          ),
          const Positioned(
            bottom: 0,
            child: ProcessToCheckOutCard(),
          ),
        ],
      ),
    );
  }
}
