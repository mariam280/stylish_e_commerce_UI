import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';
import 'auth_header.dart';
import 'forgot_password_form.dart';

class ForgotPasswordScreenBody extends StatelessWidget {
  const ForgotPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSize(h:MediaQuery.sizeOf(context).height*0.05),
              AuthHeader(title: S.of(context).forgotScreen),
              CustomSize(h:30),
              ForgotPasswordForm(),
        ],
      ),
    );
  }
}