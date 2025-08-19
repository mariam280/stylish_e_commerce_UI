import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';

class OrderPaymentDetail extends StatelessWidget {
  const OrderPaymentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
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