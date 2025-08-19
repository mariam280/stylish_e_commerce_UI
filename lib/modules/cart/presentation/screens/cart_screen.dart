import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/custom_background.dart';
import 'package:stylish_e_commerce/modules/cart/presentation/widgets/cart_screen_body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: SafeArea(child: CartScreenBody()),
    );
  }
}