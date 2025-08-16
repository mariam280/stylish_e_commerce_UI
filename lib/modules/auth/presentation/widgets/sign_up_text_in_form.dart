import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';

class SignUpTextInForm extends StatelessWidget {
  const SignUpTextInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "By clicking the",
                    style: AppStyles.stylesRegular12(context).copyWith(
                      color: Color(0xffC4C4C4),
                    ),
                  ),
                  TextSpan(
                    text: "Register",
                    style: AppStyles.stylesRegular12(context).copyWith(
                      color: AppColors.primaryColor,
                    )
                  ),
                   TextSpan(
                    text: " button, you agree\nto the public offer",
                    style: AppStyles.stylesRegular12(context).copyWith(
                      color: Color(0xffC4C4C4),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}