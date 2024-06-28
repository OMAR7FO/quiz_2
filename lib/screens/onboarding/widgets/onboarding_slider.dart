import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnBoardingSlider extends StatelessWidget {
  const OnBoardingSlider({
    super.key,
    required this.onPageChanged,
    required this.height,
    required this.items,
  });
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;
  final double height;
  final List<Widget> items;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        onPageChanged: onPageChanged,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        viewportFraction: 1,
        height: height,
      ),
    );
  }
}
