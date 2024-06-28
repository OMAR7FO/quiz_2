import 'package:go_router/go_router.dart';
import 'package:quiz_2/screens/add_card_screen/add_card_screen.dart';
import 'package:quiz_2/screens/categories_screen/categories_screen.dart';
import 'package:quiz_2/screens/checkout_screen/checkout_screen.dart';
import 'package:quiz_2/screens/home_screen/home_screen.dart';
import 'package:quiz_2/screens/navigation_bar_screen/navigation_bar_screen.dart';
import 'package:quiz_2/screens/onboarding/onboarding_screen.dart';
import 'package:quiz_2/screens/product_details_screen/widgets/product_details_screen.dart';
import 'package:quiz_2/screens/product_details_screen/widgets/product_details_screen_2.dart';
import 'package:quiz_2/screens/shopping_cart_screen/offer_shopping_cart_screen.dart';
import 'package:quiz_2/screens/shopping_cart_screen/shopping_cart_screen.dart';
import 'package:quiz_2/screens/specific_category_screen/specific_category_screen.dart';

abstract class AppRouter {
  static const kHomeScreen = '/home_screen';
  static const kCategories = '/categories';
  static const kSpecificCategory = '/specific_category';
  static const kProductDetails = '/product_details';
  static const kProductDetails2 = '/product_details2';
  static const kShoppingCart = '/shopping_cart';
  static const kOfferShoppingCart = '/offer_shopping_cart';
  static const kCheckout = '/checkout';
  static const kAddCard = '/add_card';
  static const kTest = '/test';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: kHomeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: kCategories,
      builder: (context, state) => const CategoriesScreen(),
    ),
    GoRoute(
      path: kTest,
      builder: (context, state) => const BottomNavigationBarScreen(),
    ),
    GoRoute(
      path: kSpecificCategory,
      builder: (context, state) => const SpecificCategoryScreen(),
    ),
    GoRoute(
      path: kProductDetails,
      builder: (contex, state) => const ProductDetailsScreen(),
    ),
    GoRoute(
      path: kProductDetails2,
      builder: (context, state) => const ProductDetailsScreen2(),
    ),
    GoRoute(
      path: kShoppingCart,
      builder: (context, state) => const ShoppingCartScreen(),
    ),
    GoRoute(
      path: kCheckout,
      builder: (context, state) => const CheckOutScreen(),
    ),
    GoRoute(
      path: kAddCard,
      builder: (context, state) => const AddCardScreen(),
    ),
    GoRoute(
      path: kOfferShoppingCart,
      builder: (context, state) => const OfferShoppingCartScreen(),
    )
  ]);
}
