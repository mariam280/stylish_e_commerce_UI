import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/helper/validation.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_button.dart';
import 'package:stylish_e_commerce/core/widgets/custom_text_button.dart';
import 'package:stylish_e_commerce/core/widgets/custom_text_feild.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            validator: (p0) => Validations.validateEmail(
              context,
              emailController.text,
            ),
            controller: emailController,
            hint: 'Email',
            prefixIcon: Icons.person,
          ),
          CustomSize(h: 20),
          CustomTextFormField(
            validator: (p0) => Validations.validatePassword(
              context,
              passwordController.text,
            ),
            controller: passwordController,
            hint: 'Password',
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility_outlined,
          ),
          CustomSize(
            h: 8,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CustomTextButton(
              text: 'Forgot password?',
              onPressed: () {
                GoRouter.of(context).go(AppRouters.forgotPassword);
              },
              textStyle: AppStyles.stylesRegular12(context)
                  .copyWith(color: Color(0xffF83758)),
            ),
          ),
          CustomSize(h: MediaQuery.sizeOf(context).height * 0.09),
          CustomButon(
            text: 'Login',
            onTap: () {
              if (formKey.currentState!.validate()) {
                GoRouter.of(context).go(AppRouters.getStart);
              }
            },
            color: AppColors.primaryColor,
          ),
          CustomSize(h: MediaQuery.sizeOf(context).height * 0.1),
        ],
      ),
    );
  }
}
