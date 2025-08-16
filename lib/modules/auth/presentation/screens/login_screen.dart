import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:LoginScreenBody(),
    );
  }
}