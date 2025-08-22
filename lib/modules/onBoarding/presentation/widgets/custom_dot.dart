import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 35 : 8,
      height: 8,
      decoration: ShapeDecoration(
        color: isActive ? AppColors.secondaryColor(context) : const Color(0xFFC4C4C4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
