import 'package:flutter/material.dart';

import 'main_nav_icon.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar(
      {super.key, required this.onTap, required this.currentIndex});
  final Function(int) onTap;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 76,
      child: Container(
        color: Colors.white,
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
            MainNavIcon(
                onTap: () => onTap(2),
                text: 'search',
                 icon: Icons.search,
                isActive: currentIndex == 2),
            MainNavIcon(
                onTap: () => onTap(3),
                text: 'setting',
                 icon: Icons.settings_outlined,
                isActive: currentIndex == 3),
          ],
        ),
      ),
    );
  }
}
