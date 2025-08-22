import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';

class CustomButon extends StatelessWidget {
  const CustomButon({super.key, this.onTap, required this.text, this.color});
  final VoidCallback? onTap;
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
       // margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        height: 50,
        child: Center(
          child: Text(text,
              style:  TextStyle(
                color: AppColors.widgetColor(context),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
