import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';

class MainNavIcon extends StatelessWidget {
  const MainNavIcon(
      {super.key,
      required this.icon,
      required this.text,
      required this.isActive, this.onTap});
  final IconData icon;
  final String text;
  final bool isActive;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: isActive ? AppColors.primaryColor : AppColors.secondaryColor(context),
          ),
          Text(
            text,
            style: AppStyles.stylesMedium16(context).copyWith(
              color: isActive ? AppColors.primaryColor : AppColors.secondaryColor(context),
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
