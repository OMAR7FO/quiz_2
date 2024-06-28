import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/widgets/normal_app_bar.dart';
import 'package:quiz_2/screens/checkout_screen/widgets/checkout_screen_body.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "${StringManager.shoppingCart} (5)",
        leadingIcon: Icons.arrow_back_ios,
      ),
      body: const CheckOutScreenBody(),
    );
  }
}
