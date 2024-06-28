import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';

import 'package:quiz_2/core/widgets/circle_icon_button.dart';
import 'package:quiz_2/core/widgets/custom_app_bar.dart';
import 'package:quiz_2/core/widgets/process_to_check_out_card.dart';
import 'package:quiz_2/screens/shopping_cart_screen/widgets/shopping_cart_card.dart';

class OfferShoppingCartScreen extends StatelessWidget {
  const OfferShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomScrollView(
            slivers: [
              CustomAppBar(
                appBarHeightPercentage: 30,
                padding: EdgeInsets.zero,
                backgroundColor: ColorManager.secondaryColorLight,
                title: Text("${StringManager.shoppingCart} (5)",
                    style: StyleManager.fontRegular14),
                leading: CircleIconButton(
                  icon: Icons.arrow_back_ios_new,
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                ),
                backgroundIcon: const Text(
                  "#",
                  style: TextStyle(
                    fontSize: 300,
                    height: 1,
                    color: ColorManager.secondaryColorDark,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                flexibleSpace: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "OFF!!",
                            style: StyleManager.fontExtraBold14,
                          ),
                          Text(
                            "25%",
                            style: StyleManager.fontExtraBold50.copyWith(
                              color: ColorManager.myWhite,
                              fontSize: 110,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: ColorManager.secondaryColorDark,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Use code ",
                                  style: StyleManager.fontRegular16,
                                ),
                                TextSpan(
                                  text: "#HalalFood ",
                                  style: StyleManager.fontMedium16,
                                ),
                                TextSpan(
                                  text: "at Checkout",
                                  style: StyleManager.fontRegular16,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
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
              ),
            ],
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
