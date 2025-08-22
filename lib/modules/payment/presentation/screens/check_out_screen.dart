import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/payment/presentation/widgets/check_out_screen_body.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: CheckOutScreenBody()),
    );
  }
}