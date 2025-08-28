import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerLeft,
      child: Text(title,style: AppStyles.styleBold36(context),));
  }
}
