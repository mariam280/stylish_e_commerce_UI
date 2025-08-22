import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';
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
        decoration:  BoxDecoration(
          color: AppColors.widgetColor(context),
          border: Border(
          top: BorderSide(
          color: Color(0xffA8A8A9), 
          width: 0.3,           
            ),
          ),
        ),
        child:  Padding(
          padding: const EdgeInsets.only(top: 8,left:16,right:16),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MainNavIcon(
                onTap: () => onTap(0),
                 text: S.of(context).home,
                 icon: Icons.home_outlined,
                isActive: currentIndex == 0),
                          MainNavIcon(
                onTap: () => onTap(1),
               text: S.of(context).wishlist,
                 icon: Icons.favorite_outline,
                isActive: currentIndex == 1),
              Transform.translate(
                offset: Offset(0, -26),
                child: MainNavIconCart(
                  onTap: () => onTap(2),
                  isActive: currentIndex==2),
              ),
                  MainNavIcon(
                       onTap: () => onTap(3),
                       text: S.of(context).search,
                        icon: Icons.search,
                       isActive: currentIndex == 3),
                   MainNavIcon(
                       onTap: () => onTap(4),
                       text: S.of(context).setting,
                        icon: Icons.settings_outlined,
                       isActive: currentIndex == 4),
            ],
          ),
        ),
      ),
    );
  }
}
 