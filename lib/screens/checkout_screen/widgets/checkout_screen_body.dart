import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_2/core/utils/app_router.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/core/widgets/custom_button.dart';
import 'package:quiz_2/screens/checkout_screen/widgets/list_of_addresses.dart';

class CheckOutScreenBody extends StatelessWidget {
  const CheckOutScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p24,
        right: AppPadding.p24,
        top: AppPadding.p40,
      ),
      child: SizedBox(
        height: DimensionsManager.heightPercentage(context, 80),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringManager.deliveredAddrees,
              style: StyleManager.fontRegular16.copyWith(
                color: ColorManager.black,
              ),
            ),
            const SizedBox(
              height: AppSize.s24,
            ),
            const ListOfAddresses(),
            const SizedBox(
              height: AppSize.s60,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: ColorManager.secondaryColorDark,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 12,
                      color: ColorManager.secondaryColorDark,
                    ),
                  ),
                  const SizedBox(
                    width: AppSize.s8,
                  ),
                  Text(
                    StringManager.addNewAddress,
                    style: StyleManager.fontMedium14,
                  )
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                backgroundColor: ColorManager.primaryColorLight,
                withBorder: false,
                labelColor: Colors.white,
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kAddCard);
                },
                label: StringManager.addCard,
              ),
            )
          ],
        ),
      ),
    );
  }
}
