import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/auth_header.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgotPasswordScreenBody(),
    );
  }
}

class ForgotPasswordScreenBody extends StatelessWidget {
  const ForgotPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSize(h:MediaQuery.sizeOf(context).height*0.09),
            AuthHeader(title: 'Forgot\nPassword?'),
            CustomSize(h:30),
      ],
    );
  }
}