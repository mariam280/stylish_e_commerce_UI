import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/cart/presentation/screens/cart_screen.dart';
import 'package:stylish_e_commerce/modules/favourite/presentation/screen/favourite_screen.dart';
import 'package:stylish_e_commerce/modules/home/presentation/screens/home_screen.dart';
import 'package:stylish_e_commerce/modules/layout/presentation/widgets/custom_nav_bar.dart';
import 'package:stylish_e_commerce/modules/search/presentation/screens/search_screen.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/screens/setting_screen.dart';

class LayoutScreenBody extends StatefulWidget {
  const LayoutScreenBody({super.key});

  @override
  State<LayoutScreenBody> createState() => _LayoutScreenBodyState();
}

class _LayoutScreenBodyState extends State<LayoutScreenBody> {
  PageController pageController = PageController();
  int currentIndex = 0;
  void onTap(int index) {
    if (currentIndex != index) {
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      currentIndex = index;
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ExpandablePageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              HomeScreen(),
              FavouriteScreen(),
              CartScreen(),
              SearchScreen(),
              SettingScreen(),
            ]),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomNavBar(onTap: onTap, currentIndex: currentIndex)),
      ],
    );
  }
}
