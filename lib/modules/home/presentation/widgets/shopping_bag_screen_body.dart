import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/card_details_header.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/order_payment_details.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shopping_bag_card.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shopping_bag_coupon.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shopping_bag_footer.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/total_order.dart';

class ShoppingBagScreenBody extends StatelessWidget {
  const ShoppingBagScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16,right: 16,top: 30),
          child: Column(
            spacing: 30,
            children: [
          CardDetailsHeader(),
          ShoppingBagCard(),
          ShoppingBagCoupon(),
          Divider(),
          OrderPaymentDetail(),
           Divider(),
           TotalOrder(),
          ],),
        ),
         Spacer(),
         ShoppingBagFooter(),
      ],
    );
  }
}