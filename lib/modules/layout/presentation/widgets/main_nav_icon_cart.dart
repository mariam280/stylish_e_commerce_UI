import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';

class MainNavIconCart extends StatelessWidget {
  const MainNavIconCart({super.key, required this.isActive, this.onTap});
  final bool isActive;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: isActive ? AppColors.primaryColor : AppColors.widgetColor(context),
        shape: const CircleBorder(),
        elevation: 10, // درجة الظل
        shadowColor: AppColors.secondaryColor(context).withValues(alpha: 0.3),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(Icons.shopping_cart_checkout_outlined,
              color: isActive ? Colors.white: AppColors.secondaryColor(context)),
        ),
      ),
    );
  }
}
