import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/widgets/normal_app_bar.dart';
import 'package:quiz_2/screens/orders_screen/widgets/current_order_screen_body.dart';
import 'package:quiz_2/screens/orders_screen/widgets/custom_tab.dart';

import 'package:quiz_2/screens/orders_screen/widgets/past_order_screen_body.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int activeIndex = 0;
  List<Widget> screens = [
    const CurrentOrderScreenBody(),
    const PastOrdersScreenBody()
  ];
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(_handleActiveIndex);
    super.initState();
  }

  void _handleActiveIndex() {
    setState(() {
      activeIndex = tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "Orders",
        leadingIcon: Icons.arrow_back_ios_new,
        bottom: TabBar(
          onTap: (i) {
            setState(() {
              activeIndex = i;
            });
          },
          dividerColor: ColorManager.white,
          indicatorColor: ColorManager.white,
          overlayColor: const WidgetStatePropertyAll(Colors.transparent),
          controller: tabController,
          tabs: [
            CustomTab(
              label: 'Current',
              isActive: activeIndex == 0,
            ),
            CustomTab(
              label: 'Past',
              isActive: activeIndex == 1,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          CurrentOrderScreenBody(),
          PastOrdersScreenBody(),
        ],
      ),
    );
  }
}
