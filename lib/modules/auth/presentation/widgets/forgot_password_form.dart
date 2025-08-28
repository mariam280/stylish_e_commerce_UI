import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_button.dart';
import 'package:stylish_e_commerce/core/widgets/custom_text_form_feild.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

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
        children: [
          CustomTextFormField(
            validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).fieldRequired;
            }
            if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
              return S.of(context).validEmail;
            }
            return null;
          },
            controller: emailController,
            hint: S.of(context).enterYourEmail,
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
                  text: S.of(context).textInForgot,
                  style: AppStyles.stylesRegular14(context).copyWith(
                    color: Color(0xffC4C4C4),
                  ),
                ),
              ],
            ),
          ),
          CustomSize(h:MediaQuery.sizeOf(context).height*0.06),
          CustomButon(
            text: S.of(context).submit,
            onTap: () {
              if (formKey.currentState!.validate()) {
                GoRouter.of(context).go(AppRouters.logIn);
              }
            },
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
