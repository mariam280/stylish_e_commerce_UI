import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        spacing: 20,
        children: [
          CustomTextFormField(
            validator: (p0) => Validations.validateEmail(
              context,
              emailController.text,
            ),
            controller: emailController,
            hint: 'Email',
            suffixIcon: Icons.person,
          ),
          CustomTextFormField(
            validator: (p0) => Validations.validatePassword(
              context,
              passwordController.text,
            ),
            controller: passwordController,
            hint: 'Password',
            suffixIcon: Icons.lock,
            prefixIcon: Icons.visibility_outlined,
          ),
          CustomSize(h: 8,),
          Align(
            alignment: Alignment.centerRight,
            child: CustomTextButton(
              text: 'Forgot password?',
              onPressed: () {},
              color: AppColors.primaryColor,
            ),
          ),
          CustomSize(h:40),
          CustomButon(
            text: 'Login',
            onTap: () {
              if (formKey.currentState!.validate()) {
                GoRouter.of(context).go(AppRouters.homeLayout);
              }
            },
            color: AppColors.primaryColor,
          ),
           CustomSize(h:40),
        ],
      ),
    );
  }
}
