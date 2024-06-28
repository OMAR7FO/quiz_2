import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_2/core/utils/assets_manager.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/screens/categories_screen/categories_screen.dart';
import 'package:quiz_2/screens/home_screen/home_screen.dart';
import 'package:quiz_2/screens/orders_screen/order_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  final _pageController = PageController(initialPage: 0);

  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// widget list
    final List<Widget> bottomBarPages = [
      const HomeScreen(),
      const CategoriesScreen(),
      const OrdersScreen(),
      const Page5(),
    ];
    return Scaffold(
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            bottomBarPages.length,
            (index) => bottomBarPages[index],
          ),
        ),
        extendBody: true,
        bottomNavigationBar: AnimatedNotchBottomBar(
          /// Provide NotchBottomBarController
          notchBottomBarController: _controller,
          color: Colors.white,
          showLabel: true,
          textOverflow: TextOverflow.visible,
          maxLine: 1,
          shadowElevation: 5,
          kBottomRadius: 0,
          notchColor: ColorManager.primaryFontColor,
          removeMargins: true,
          showShadow: false,
          durationInMilliSeconds: 300,

          itemLabelStyle: StyleManager.fontMedium13
              .copyWith(color: const Color(0XFF8891A5)),

          elevation: 1,
          bottomBarItems: [
            BottomBarItem(
              inActiveItem: SvgPicture.asset(AssetsManager.homeIcon),
              activeItem: SvgPicture.asset(
                AssetsManager.homeAtiveIcon,
              ),
              itemLabel: 'Home',
            ),
            BottomBarItem(
              inActiveItem: SvgPicture.asset(AssetsManager.categoryIcon),
              activeItem: SvgPicture.asset(
                AssetsManager.categoryActiveIcon,
              ),
              itemLabel: 'Categories',
            ),
            const BottomBarItem(
              inActiveItem: Icon(
                Icons.favorite_border_rounded,
              ),
              activeItem: Icon(
                Icons.favorite,
                color: ColorManager.secondaryColorDark,
              ),
              itemLabel: 'Favourite',
            ),
            const BottomBarItem(
              inActiveItem: Icon(
                Icons.more_vert,
              ),
              activeItem: Icon(
                Icons.more_vert,
                color: ColorManager.secondaryColorDark,
              ),
              itemLabel: 'More',
            ),
          ],
          onTap: (index) {
            _pageController.jumpToPage(index);
          },
          kIconSize: 24.0,
        ));
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue, child: const Center(child: Text('Page 4')));
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightGreenAccent,
        child: const Center(child: Text('Page 5')));
  }
}
