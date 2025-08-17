import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';

class MainNavIconCart extends StatelessWidget {
  const MainNavIconCart({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const CircleBorder(),
      elevation: 6, // درجة الظل
      shadowColor: Colors.black.withValues(alpha:0.3),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.shopping_cart_checkout_outlined,
            color: isActive ? AppColors.primaryColor : Colors.black),
      ),
    );
  }
}
