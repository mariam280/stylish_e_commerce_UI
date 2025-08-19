import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';

class TotalOrder extends StatelessWidget {
  const TotalOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
      Row(children: [
        Text('Order Total',style: AppStyles.stylesMedium16(context).copyWith(fontSize: 17),),
        Spacer(),
        Text(r'$ 7,000.00',style: AppStyles.stylesemiBold18(context).copyWith(color: Colors.black),),
      ],),
      Row(
        spacing: 20,
        children: [
        Text('EMI  Available ',style: AppStyles.stylesRegular14(context)
                  .copyWith(fontSize: 16, color: Colors.black),),
        Text('Details',style: AppStyles.stylesemiBold18(context).copyWith(fontSize: 12),),
      ],),
    ],);
  }
}