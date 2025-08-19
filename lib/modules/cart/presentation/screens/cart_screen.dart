import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/custom_background.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: SafeArea(child: CartScreenBody()),
    );
  }
}

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      
    ],);
  }
}