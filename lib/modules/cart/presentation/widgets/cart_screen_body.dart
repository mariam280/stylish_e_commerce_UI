import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/cart/presentation/widgets/adress_info_add_buttons.dart';
import 'package:stylish_e_commerce/modules/cart/presentation/widgets/cart_screen_header.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CartScreenHeader(),
          AdressInfoAddButtons(),
        ],
      ),
    );
  }
}
