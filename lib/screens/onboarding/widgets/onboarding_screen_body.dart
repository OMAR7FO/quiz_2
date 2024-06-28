import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_2/core/utils/app_router.dart';
import 'package:quiz_2/core/utils/assets_manager.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/dimension_manager.dart';
import 'package:quiz_2/core/utils/string_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/screens/onboarding/widgets/onboarding_button.dart';
import 'package:quiz_2/screens/onboarding/widgets/onboarding_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreenBody extends StatefulWidget {
  const OnboardingScreenBody({super.key});

  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

class _OnboardingScreenBodyState extends State<OnboardingScreenBody> {
  final controller = PageController(
    viewportFraction: 0.8,
    keepPage: true,
  );
  final cController = CarouselController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p32,
          horizontal: AppPadding.p42,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OnBoardingSlider(
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
              height: DimensionsManager.heightPercentage(context, 27),
              items: List.generate(
                StringManager.onboardingHeading.length,
                (index) => Column(
                  children: [
                    Text(
                      StringManager.onboardingHeading[index],
                      style: StyleManager.fontBold30,
                    ),
                    const SizedBox(
                      height: AppSize.s20,
                    ),
                    Text(
                      StringManager.onboardingSubHeading[index],
                      style: StyleManager.fontMedium18,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.s40,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotHeight: 8,
                  activeDotColor: ColorManager.myWhite,
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.s70,
            ),
            SvgPicture.asset(
              AssetsManager.onBoardingImage,
            ),
            const Spacer(),
            OnBoardingButton(
              onPressed: () {
                GoRouter.of(context).pushReplacement(AppRouter.kTest);
              },
              text: StringManager.onBoardingButtonText,
              width: DimensionsManager.widthPercentage(context, 70),
            ),
          ],
        ),
      ),
    );
  }
}
