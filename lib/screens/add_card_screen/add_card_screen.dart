import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/widgets/normal_app_bar.dart';
import 'package:quiz_2/screens/add_card_screen/widgets/add_card_screen_body.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(
        context,
        title: StringManager.addCard,
        leadingIcon: Icons.arrow_back_ios_new,
      ),
      body: const AddCardScreenBody(),
    );
  }
}
