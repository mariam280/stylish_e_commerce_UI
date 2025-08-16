import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/onBoarding/presentation/widgets/on_board_view_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardViewBody(),
    );
  }
}