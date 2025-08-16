import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/widgets/custom_text_button.dart';

class AuthScreenFooter extends StatelessWidget {
  const AuthScreenFooter({super.key, required this.text, required this.textButton, required this.onTap});
  final String text;
  final String textButton;
  final dynamic Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppStyles.stylesRegular14(context),
        ),
        CustomTextButton(
          text: textButton,
          textStyle: AppStyles.stylesemiBold14(context).copyWith(color: Color(0xffF83758)),
          onPressed: onTap,
        ),
      ],
    );
  }
}
