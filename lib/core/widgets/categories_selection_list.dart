import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/core/widgets/category_selection_box.dart';

class CategoriesSelectionList extends StatefulWidget {
  const CategoriesSelectionList({
    super.key,
    required this.names,
  });

  final List<String> names;

  @override
  State<CategoriesSelectionList> createState() =>
      _CategoriesSelectionListState();
}

class _CategoriesSelectionListState extends State<CategoriesSelectionList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p24, top: AppPadding.p24),
      child: SizedBox(
        height: DimensionsManager.heightPercentage(context, 5),
        child: ListView.separated(
          itemBuilder: (context, index) => CategorySelectionBox(
            categoryName: widget.names[index],
            isSelected: selectedIndex == index,
            onPressed: () {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          separatorBuilder: (context, index) => const SizedBox(
            width: AppSize.s8,
          ),
          itemCount: widget.names.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
