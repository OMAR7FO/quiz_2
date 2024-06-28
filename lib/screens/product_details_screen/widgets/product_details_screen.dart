import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/core/widgets/custom_button.dart';
import 'package:quiz_2/core/widgets/normal_app_bar.dart';
import 'package:quiz_2/core/widgets/notification_icon.dart';
import 'package:quiz_2/screens/product_details_screen/widgets/widgets/image_slider.dart';
import 'package:quiz_2/screens/product_details_screen/widgets/widgets/my_rating_widget.dart';
import 'package:quiz_2/screens/product_details_screen/widgets/widgets/product_price_details.dart';
import 'package:quiz_2/screens/product_details_screen/widgets/widgets/see_more_text.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "orange",
        leadingIcon: Icons.arrow_back_ios_new,
        actions: [
          const NotifictionIcon(
            iconColor: ColorManager.primaryFontColor,
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ImageSlider(
                    isCircle: false,
                  ),
                  const SizedBox(
                    height: AppSize.s24,
                  ),
                  Text(
                    'Thin Choise Top \nOrange',
                    style: StyleManager.fontSemiBold22.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s12,
                  ),
                  const ProductPriceDetails(),
                  const SizedBox(
                    height: AppSize.s26,
                  ),
                  const MyRatingWidget(),
                  const SizedBox(
                    height: AppSize.s30,
                  ),
                  Text(
                    StringManager.details,
                    style: StyleManager.fontRegular20,
                  ),
                  const SizedBox(
                    height: AppSize.s6,
                  ),
                  Text(
                    'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
                    style: StyleManager.fontRegular16.copyWith(
                      color: const Color(0XFF8891A5),
                    ),
                  ),
                  const SeeMoreText(
                    label: StringManager.facts,
                    description:
                        'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.Nullam quis risus eget urna mollis ornare Nullam quis risus eget urna mollis ornare Nullam quis risus eget urna mollis ornare ',
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: AppPadding.p20 + 55),
                    child: SeeMoreText(
                      label: StringManager.reviews,
                      description:
                          'risque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.Nullam quis risus eget urna mollis ornare Nullam quis risus eget urna mollis ornare Nullam quis risus eget urna mollis ornare ',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: AppPadding.p20,
            left: AppPadding.p24,
            right: AppPadding.p24,
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onPressed: () {},
                    labelColor: ColorManager.primaryColorLight,
                    backgroundColor: ColorManager.white,
                    withBorder: true,
                    label: StringManager.addToCart,
                  ),
                ),
                const SizedBox(
                  width: AppSize.s10,
                ),
                Expanded(
                  child: CustomButton(
                    onPressed: () {},
                    labelColor: ColorManager.white,
                    backgroundColor: ColorManager.primaryColorLight,
                    withBorder: false,
                    label: StringManager.buyNow,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
