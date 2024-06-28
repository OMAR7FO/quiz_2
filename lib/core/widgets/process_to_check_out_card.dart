import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_2/core/utils/app_router.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/core/widgets/custom_button.dart';
import 'package:quiz_2/screens/shopping_cart_screen/widgets/cart_description.dart';

class ProcessToCheckOutCard extends StatelessWidget {
  const ProcessToCheckOutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: DimensionsManager.widthPercentage(context, 2.5),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppPadding.p18),
        height: DimensionsManager.heightPercentage(context, 30),
        width: DimensionsManager.widthPercentage(context, 95),
        decoration: const BoxDecoration(
          color: Color(0XFFF8F9FB),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p35),
              child: Column(
                children: [
                  CartDescription(
                    label: StringManager.subTotal,
                    price: "36.96",
                  ),
                  SizedBox(
                    height: AppSize.s16,
                  ),
                  CartDescription(
                    label: StringManager.deleviry,
                    price: "2.00",
                  ),
                  SizedBox(
                    height: AppSize.s16,
                  ),
                  CartDescription(
                    label: StringManager.total,
                    price: "37.96",
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p16),
              child: CustomButton(
                backgroundColor: ColorManager.primaryColorLight,
                withBorder: false,
                labelColor: Colors.white,
                label: 'Proceed To checkout',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kCheckout);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
