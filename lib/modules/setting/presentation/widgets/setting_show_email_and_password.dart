import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';

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
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10,left: 16),
        child: Text(
          text,
          style: AppStyles.stylesemiBold14(context).copyWith(color: Colors.black),
        ),
      ),
    );
  }
}