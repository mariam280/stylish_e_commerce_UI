import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/card_details_header.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/order_payment_details.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shopping_bag_card.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shopping_bag_coupon.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/total_order.dart';

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
          Divider(),
          OrderPaymentDetail(),
           Divider(),
           TotalOrder(),
        ],
      ),
    );
  }
}




// class OrderPaymentDetailsText extends StatelessWidget {
//   const OrderPaymentDetailsText({super.key, required this.title, required this.subTitle});
//   final String title, subTitle;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Text(
//           title,
//         ),
//         Spacer(),
//         Text(subTitle),
//       ],
//     );
//   }
// }
