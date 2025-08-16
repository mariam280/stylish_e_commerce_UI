import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';

class SignUpTextInForm extends StatelessWidget {
  const SignUpTextInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "By clicking the",
                  style: AppStyles.stylesemiBold18(context).copyWith(
                    color: Color(0xffC4C4C4),
                  ),
                ),
                TextSpan(
                  text: "Register",
                  style: AppStyles.stylesemiBold18(context)
                ),
                 TextSpan(
                  text: " button, you agree\nto the public offer",
                  style: AppStyles.stylesemiBold18(context).copyWith(
                    color: Color(0xffC4C4C4),
                  ),
                ),
              ],
            ),
          );
  }
}