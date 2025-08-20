import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_button.dart';
import 'package:stylish_e_commerce/core/widgets/custom_text_form_feild.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/sign_up_text_in_form.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            validator:  (value) {
            if (value == null || value.isEmpty) {
              return 'field is required';
            }
            if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
              return 'Please enter a valid email';
            }
            return null;
          },
            controller: emailController,
            hint: 'Email',
            prefixIcon: Icons.person,
          ),
          CustomSize(h: 20),
          CustomTextFormField(
            validator: (value) {
            if (value == null || value.isEmpty) {
              return 'field is required';
            }
            if (value.length < 6) {
              return 'Password must be at least 6 characters';
            }
            return null;
          },
            controller: passwordController,
            hint: 'Password',
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility_outlined,
          ),
          CustomSize(h: 20),
          CustomTextFormField(
            validator: (value) {
            if (value == null || value.isEmpty) {
              return 'field is required';
            }
            if (value.length < 6) {
              return 'Password must be at least 6 characters';
            }if (passwordController != confirmPasswordController) {
               return 'Password and Confirm Password must be same!';
             }
             return null;
          },
            controller: confirmPasswordController,
            hint: 'Confirm password',
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility_outlined,
          ),
          CustomSize(h: 16),
          SignUpTextInForm(),
          CustomSize(h: MediaQuery.sizeOf(context).height * 0.04),
          CustomButon(
            text: 'Create account',
            onTap: () {
              if (formKey.currentState!.validate()) {
               GoRouter.of(context).go(AppRouters.getStart);
              }
            },
            color: AppColors.primaryColor,
          ),
          CustomSize(h: MediaQuery.sizeOf(context).height * 0.05),
        ],
      ),
    );
  }
}
