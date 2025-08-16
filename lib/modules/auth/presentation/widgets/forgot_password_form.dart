import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/helper/validation.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_button.dart';
import 'package:stylish_e_commerce/core/widgets/custom_text_feild.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 40,
        children: [
          CustomTextFormField(
            validator: (p0) => Validations.validateEmail(
              context,
              emailController.text,
            ),
            controller: emailController,
            hint: 'Enter your Email Adress',
            prefixIcon: Icons.email,
          ),
          CustomSize(h:20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "*",
                  style: AppStyles.stylesemiBold18(context)   
                ),
                TextSpan(
                  text: " We will send you a message to set or reset\nyour new password",
                  style: AppStyles.stylesemiBold18(context).copyWith(
                    color: Color(0xffC4C4C4),
                  ),
                ),
              ],
            ),
          ),
          CustomSize(h:MediaQuery.sizeOf(context).height*0.09),
          CustomButon(
            text: 'Submit',
            onTap: () {
              if (formKey.currentState!.validate()) {
                GoRouter.of(context).go(AppRouters.homeLayout);
              }
            },
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
