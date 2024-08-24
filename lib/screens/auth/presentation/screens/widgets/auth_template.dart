import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/core/widgets/custom_state_button.dart';

class AuthTemplate extends StatelessWidget {
  const AuthTemplate({
    super.key,
    required this.body,
    required this.fullScreen,
    required this.header,
    required this.primaryButtonOnPressed,
    required this.primaryButtonText,
    required this.secondaryButtonOnPressed,
    required this.secondaryButtonText,
    required this.subHeader,
    required this.primaryButtonState,
    required this.bottomText,
  });
  final List<Widget> body;
  final String header;
  final String subHeader;
  final String primaryButtonText;
  final String bottomText;
  final void Function()? primaryButtonOnPressed;
  final String secondaryButtonText;
  final void Function()? secondaryButtonOnPressed;
  final bool fullScreen;
  final ButtonState primaryButtonState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: fullScreen ? DimensionsManager.screenHeight(context) : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: DimensionsManager.screenWidth(context),
                height: DimensionsManager.heightPercentage(context, 20),
                child: Stack(
                  children: [
                    Positioned(
                      top: -60,
                      right: -80,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorManager.primaryColorLight),
                      ),
                    ),
                    Positioned(
                      top: -60,
                      right: 50,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorManager.primaryColorDark),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: fullScreen
                    ? DimensionsManager.heightPercentage(context, 50)
                    : null,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.s30,
                  ),
                  shrinkWrap: true,
                  children: [
                    Text(
                      header,
                      style: StyleManager.fontExtraBold50.copyWith(
                          color: ColorManager.primaryColorLight, height: 1),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      subHeader,
                      style: StyleManager.fontBold20.copyWith(
                        color: ColorManager.greyFontColor,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s50,
                    ),
                    ...body,
                  ],
                ),
              ),
              SizedBox(
                height: DimensionsManager.heightPercentage(context, 30),
                width: DimensionsManager.screenWidth(context),
                child: Stack(
                  children: [
                    Positioned(
                      left: -300,
                      child: Container(
                        width: 600,
                        height: 600,
                        decoration: const BoxDecoration(
                          color: ColorManager.primaryColorLight,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: -30,
                      child: Container(
                        width: 600,
                        height: 600,
                        decoration: const BoxDecoration(
                          color: ColorManager.primaryColorDark,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: DimensionsManager.widthPercentage(context, 100),
                        padding:
                            const EdgeInsets.symmetric(horizontal: AppSize.s30),
                        child: CustomStateButton(
                          currentState: primaryButtonState,
                          onPressed: primaryButtonOnPressed,
                          label: primaryButtonText,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: AppSize.s30,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              secondaryButtonText,
                              style: StyleManager.fontRegular16.copyWith(
                                color: ColorManager.white,
                              ),
                            ),
                            TextButton(
                              onPressed: secondaryButtonOnPressed,
                              child: Text(
                                bottomText,
                                style: StyleManager.fontRegular16.copyWith(
                                  color: ColorManager.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
