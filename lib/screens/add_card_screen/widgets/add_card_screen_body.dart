import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/core/widgets/process_to_check_out_card.dart';
import 'package:quiz_2/screens/add_card_screen/widgets/custom_text_field.dart';

class AddCardScreenBody extends StatelessWidget {
  const AddCardScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p20,
            vertical: AppPadding.p60,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextField(
                label: StringManager.cardHolderName,
              ),
              SizedBox(
                height: AppSize.s30,
              ),
              CustomTextField(
                label: StringManager.cardNumber,
              ),
              SizedBox(
                height: AppSize.s30,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      label: StringManager.expDate,
                    ),
                  ),
                  SizedBox(
                    width: AppSize.s30,
                  ),
                  Expanded(
                    child: CustomTextField(
                      label: StringManager.cvc,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        ProcessToCheckOutCard()
      ],
    );
  }
}
