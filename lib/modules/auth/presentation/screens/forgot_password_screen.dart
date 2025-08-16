import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/forgot_password_screen_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgotPasswordScreenBody(),
    );
  }
}