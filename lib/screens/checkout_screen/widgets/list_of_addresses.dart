import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/screens/checkout_screen/widgets/selection_box.dart';

class ListOfAddresses extends StatefulWidget {
  const ListOfAddresses({super.key});

  @override
  State<ListOfAddresses> createState() => _ListOfAddressesState();
}

class _ListOfAddressesState extends State<ListOfAddresses> {
  int activeIndex = 0;
  final List<List<String>> addresses = const [
    ['Home', '36 green way, Sunamganj'],
    ['Office', 'Medical road, Halal lab, Sunamganj'],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => SelectionBox(
        onPressed: () {
          setState(() {
            activeIndex = index;
          });
        },
        titel2: addresses[index][1],
        title1: addresses[index][0],
        isSelected: activeIndex == index,
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: AppSize.s24,
      ),
      itemCount: addresses.length,
      shrinkWrap: true,
    );
  }
}
