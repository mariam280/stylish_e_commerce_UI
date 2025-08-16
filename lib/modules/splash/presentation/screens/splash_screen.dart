import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/splash/presentation/widgets/splash_Screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenBody(),
    );
  }
}