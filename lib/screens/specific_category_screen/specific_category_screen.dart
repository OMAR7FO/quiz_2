import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/core/widgets/normal_app_bar.dart';
import 'package:quiz_2/core/widgets/notification_icon.dart';
import 'package:quiz_2/core/widgets/product_card_grid_view.dart';
import 'package:quiz_2/core/widgets/categories_selection_list.dart';

class SpecificCategoryScreen extends StatelessWidget {
  const SpecificCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "Popular",
      "Low Price",
      "Small Fishes",
      "Big Fishes",
      "Salamon",
      "Sushi"
    ];
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "Bit & Small Fishes",
        leadingIcon: Icons.arrow_back_ios,
        actions: const [
          Icon(
            Icons.search_outlined,
            color: ColorManager.primaryFontColor,
          ),
          SizedBox(
            width: 35,
          ),
          NotifictionIcon(
            iconColor: ColorManager.primaryFontColor,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoriesSelectionList(names: names),
            const SizedBox(
              height: AppSize.s24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSize.s24),
              child: ProductCardGridView(),
            ),
          ],
        ),
      ),
    );
  }
}
