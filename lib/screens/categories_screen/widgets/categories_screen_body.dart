import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_2/core/utils/app_router.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/screens/categories_screen/widgets/categories_app_bar.dart';
import 'package:quiz_2/core/widgets/categories_selection_list.dart';
import 'package:quiz_2/screens/categories_screen/widgets/category_card.dart';
import 'package:quiz_2/screens/categories_screen/widgets/product_category_details_card.dart';

class CategoriesScreenBody extends StatefulWidget {
  const CategoriesScreenBody({super.key});

  @override
  State<CategoriesScreenBody> createState() => _CategoriesScreenBodyState();
}

class _CategoriesScreenBodyState extends State<CategoriesScreenBody> {
  final int selectedIndex = 0;
  bool con = false;
  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "Meats & Fishes",
      "Vegetables",
      "Fruits",
      "Hello world",
      "How",
    ];
    return CustomScrollView(
      slivers: [
        CategoriesAppBar(
          searchOnPressed: () {
            setState(() {
              con = !con;
            });
          },
        ),
        //! List section
        SliverToBoxAdapter(
          child: con
              ? Column(
                  children: [
                    CategoriesSelectionList(names: names),
                    const SizedBox(
                      height: AppSize.s24,
                    ),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p24,
                      ),
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          ProdcutCategoryDetailsCard(
                        onPressed: () {
                          GoRouter.of(context)
                              .push(AppRouter.kSpecificCategory);
                        },
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: AppSize.s30,
                      ),
                      itemCount: 20,
                    ),
                  ],
                )
              : GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: AppSize.s20,
                    crossAxisSpacing: AppSize.s20,
                    mainAxisExtent:
                        DimensionsManager.heightPercentage(context, 22),
                  ),
                  itemBuilder: (context, index) => const CategoryCard(),
                  itemCount: 30,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(AppPadding.p24),
                ),
        ),
        // ! Grid Section
      ],
    );
  }
}
