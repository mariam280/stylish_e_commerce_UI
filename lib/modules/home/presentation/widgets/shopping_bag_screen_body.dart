import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
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
          Divider(),
          OrderPaymentDetail(),
           Divider(),
        ],
      ),
    );
  }
}

class OrderPaymentDetail extends StatelessWidget {
  const OrderPaymentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Order Payment Details',
          style: AppStyles.stylesMedium16(context).copyWith(fontSize: 17),
        ),
        Row(
          children: [
            Text(
              'Order Amounts',
              style: AppStyles.stylesRegular14(context)
                  .copyWith(fontSize: 16, color: Colors.black),
            ),
            Spacer(),
            Text(r'$ 7,000.00',style: AppStyles.stylesemiBold18(context).copyWith(color: Colors.black),),
          ],
        ),
        Row(
          children: [
            Text('Convenience',style: AppStyles.stylesRegular14(context)
                  .copyWith(fontSize: 16, color: Colors.black),),
            Text('Know More',style: AppStyles.stylesemiBold18(context).copyWith(fontSize: 12),),
            Spacer(),
            Text('Apply Coupon',style: AppStyles.stylesemiBold18(context).copyWith(fontSize: 12),),
          ],
        ),
        Row(
          children: [
            Text('Delivery Fee',style: AppStyles.stylesRegular14(context).copyWith(
              color: Colors.black
            ),),
            Spacer(),
            Text('Free',style: AppStyles.stylesemiBold18(context).copyWith(fontSize: 12),),
          ],
        )
      ],
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
