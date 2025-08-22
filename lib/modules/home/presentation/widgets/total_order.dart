import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

class TotalOrder extends StatelessWidget {
  const TotalOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
      Row(children: [
        Text(S.of(context).orderTotal,style: AppStyles.stylesMedium16(context).copyWith(fontSize: 17),),
        Spacer(),
        Text(r'$ 7,000.00',style: AppStyles.stylesemiBold18(context).copyWith(color: Colors.black),),
      ],),
      Row(
        spacing: 20,
        children: [
        Text(S.of(context).eMIavailable,style: AppStyles.stylesRegular14(context)
                  .copyWith(fontSize: 16, color: Colors.black),),
        Text(S.of(context).details,style: AppStyles.stylesemiBold18(context).copyWith(fontSize: 12),),
      ],),
    ],);
  }
}