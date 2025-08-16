import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/modules/onBoarding/presentation/widgets/onboard_item.dart';

class OnboardItemPageView extends StatelessWidget {
  const OnboardItemPageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: [
          OnboardItem(
            image: Assets.imagesOnboarding1,
            title: 'Choose Products',
            description: 'Amet minim mollit non deserunt ullamco est\n sit aliqua dolor do amet sint. Velit officia\n consequat duis enim velit mollit.',
          ),
          OnboardItem(
            image: Assets.imagesOnboarding2,
            title: 'Make Payment',
            description: 'Amet minim mollit non deserunt ullamco est\n sit aliqua dolor do amet sint. Velit officia\n consequat duis enim velit mollit.',
          ),
          OnboardItem(
            image: Assets.imagesOnboarding3,
            title: 'Get Your Order',
            description: 'Amet minim mollit non deserunt ullamco est\n sit aliqua dolor do amet sint. Velit officia\n consequat duis enim velit mollit.',
          ),
        ]);
  }
}
