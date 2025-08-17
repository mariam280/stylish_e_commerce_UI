import 'package:flutter/material.dart';

class CustomDotShopNow extends StatelessWidget {
  const CustomDotShopNow({super.key, required this.isActive});

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 8,
      height: 8,
      decoration: ShapeDecoration(
        color: isActive ? Color(0xffFFA3B3) : const Color(0xFFC4C4C4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}