import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/layout/presentation/widgets/main_nav_icon_cart.dart';

import 'main_nav_icon.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar(
      {super.key, required this.onTap, required this.currentIndex});
  final Function(int) onTap;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 85,
      child: Container(
        color: Color(0xffF9F9F9),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MainNavIcon(
                onTap: () => onTap(0),
                 text: 'home',
                 icon: Icons.home_outlined,
                isActive: currentIndex == 0),
                          MainNavIcon(
                onTap: () => onTap(1),
               text: 'wishlist',
                 icon: Icons.favorite_outline,
                isActive: currentIndex == 1),
              MainNavIconCart(
                onTap: () => onTap(2),
                isActive: currentIndex==2),
                  MainNavIcon(
                                  onTap: () => onTap(3),
                                  text: 'search',
                                   icon: Icons.search,
                                  isActive: currentIndex == 3),
                              MainNavIcon(
                                  onTap: () => onTap(4),
                                  text: 'setting',
                                   icon: Icons.settings_outlined,
                                  isActive: currentIndex == 4)
            ],
          ),
        ),
      ),
    );
  }
}