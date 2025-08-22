import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

class OrderPaymentDetail extends StatelessWidget {
  const OrderPaymentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).orderpaymetDetails,
          style: AppStyles.stylesMedium16(context).copyWith(fontSize: 17),
        ),
        Row(
          children: [
            Text(
              S.of(context).orderamount,
              style: AppStyles.stylesRegular14(context)
                  .copyWith(fontSize: 16, color: Colors.black),
            ),
            Spacer(),
            Text(r'$ 7,000.00',style: AppStyles.stylesemiBold18(context).copyWith(color: Colors.black),),
          ],
        ),
        Row(
          children: [
            Text(S.of(context).convinience,style: AppStyles.stylesRegular14(context)
                  .copyWith(fontSize: 16, color: Colors.black),),
            Text(S.of(context).knowMore,style: AppStyles.stylesemiBold18(context).copyWith(fontSize: 12),),
            Spacer(),
            Text(S.of(context).applyCopon,style: AppStyles.stylesemiBold18(context).copyWith(fontSize: 12),),
          ],
        ),
        Row(
          children: [
            Text(S.of(context).deliveryFee,style: AppStyles.stylesRegular14(context).copyWith(
              color: Colors.black
            ),),
            Spacer(),
            Text(S.of(context).free,style: AppStyles.stylesemiBold18(context).copyWith(fontSize: 12),),
          ],
        )
      ],
    );
  }
}