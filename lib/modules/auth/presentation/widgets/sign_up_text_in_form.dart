import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

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
                    text: S.of(context).clicking,
                    style: AppStyles.stylesRegular14(context).copyWith(
                      color: Color(0xffC4C4C4),
                    ),
                  ),
                  TextSpan(
                    text: S.of(context).register,
                    style: AppStyles.stylesRegular14(context).copyWith(
                      color: AppColors.primaryColor,
                    )
                  ),
                   TextSpan(
                    text: S.of(context).publicOffer,
                    style: AppStyles.stylesRegular14(context).copyWith(
                      color: Color(0xffC4C4C4),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}