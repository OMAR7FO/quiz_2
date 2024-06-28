import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_2/core/utils/assets_manager.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({
    super.key,
    required this.isCircle,
  });
  final bool isCircle;
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.greyBackground.withOpacity(.1),
                shape: widget.isCircle ? BoxShape.circle : BoxShape.rectangle,
              ),
              child: Center(
                child: SvgPicture.asset(
                  AssetsManager.picture,
                  color: const Color(0XFFA1ABC0),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.greyBackground.withOpacity(.1),
                shape: widget.isCircle ? BoxShape.circle : BoxShape.rectangle,
              ),
              child: Center(
                child: SvgPicture.asset(
                  AssetsManager.picture,
                  color: const Color(0XFFA1ABC0),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorManager.greyBackground.withOpacity(.1),
                shape: widget.isCircle ? BoxShape.circle : BoxShape.rectangle,
              ),
              width: double.infinity,
              child: Center(
                child: SvgPicture.asset(
                  AssetsManager.picture,
                  color: const Color(0XFFA1ABC0),
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
            viewportFraction: 1,
          ),
        ),
        const SizedBox(
          height: AppSize.s10,
        ),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: 3,
          effect: const SlideEffect(
            dotHeight: 6,
            dotWidth: 22,
            activeDotColor: ColorManager.secondaryColorDark,
          ),
        ),
      ],
    );
  }
}
