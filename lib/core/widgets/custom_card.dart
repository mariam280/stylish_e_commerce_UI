import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.aspectRatio, this.child});
  final double aspectRatio;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Card(
        color: AppColors.widgetColor(context),
        elevation: 6, // درجة الظل
        shadowColor: AppColors.secondaryColor(context).withValues(alpha: 0.3),
        child: child,
      ),
    );
  }
}
