import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';
import 'package:stylish_e_commerce/core/widgets/custom_text_button.dart';

class AuthScreenFooter extends StatelessWidget {
  const AuthScreenFooter({super.key, required this.text, required this.textButton});
  final String text;
  final String textButton;
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
          onPressed: () {
            GoRouter.of(context).push(AppRouters.signUp);
          },
        ),
      ],
    );
  }
}
