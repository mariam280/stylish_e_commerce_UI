import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';

class SettingShowEmailAndPassword extends StatelessWidget {
  const SettingShowEmailAndPassword({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Colors.grey,
          ),
        ),
        color: AppColors.widgetColor(context),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10,left: 16),
        child: Text(
          text,
          style: AppStyles.stylesemiBold14(context).copyWith(color: AppColors.secondaryColor(context)),
        ),
      ),
    );
  }
}