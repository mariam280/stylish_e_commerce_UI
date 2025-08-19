import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/card_details_header.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shopping_bag_card.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shopping_bag_coupon.dart';

class ShoppingBagScreenBody extends StatelessWidget {
  const ShoppingBagScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        spacing: 30,
        children: [
          CardDetailsHeader(),
          ShoppingBagCard(),
          ShoppingBagCoupon(),
        ],
      ),
    );
  }
}
