import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/auth_header.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/login_form.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AuthHeader(title: 'Welcome\nBack!'),
        LoginForm(),
      ],
    );
  }
}