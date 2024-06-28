import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/core/widgets/product_card_grid_view.dart';
import 'package:quiz_2/screens/home_screen/widgets/app_bar/home_screen_app_bar.dart';
import 'package:quiz_2/screens/home_screen/widgets/offer_list_view.dart';
import 'package:quiz_2/screens/home_screen/widgets/recommended_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const HomeScreenAppBar(),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              top: AppPadding.p25,
              left: AppPadding.p20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: DimensionsManager.heightPercentage(context, 17),
                  child: const OfferListView(),
                ),
                const SizedBox(
                  height: AppSize.s26,
                ),
                Text(
                  StringManager.recommended,
                  style: StyleManager.fontRegular30,
                ),
                const SizedBox(
                  height: AppSize.s18,
                ),
                const RecommendedListView(),
                const SizedBox(
                  height: AppSize.s26,
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Deals on Fruits & Tea",
                  style: StyleManager.fontBold20,
                ),
                const ProductCardGridView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
