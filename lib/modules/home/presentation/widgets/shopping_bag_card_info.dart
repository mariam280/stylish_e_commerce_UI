import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';

class ShoppingBagCardInfo extends StatelessWidget {
  const ShoppingBagCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(
              'Women’s Casual Wear',
              style: AppStyles.stylesemiBold14(context).copyWith(color: Colors.black),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('Checked Single-Breasted Blaze\n',style: AppStyles.stylesMedium16(context).copyWith(fontSize: 12),),
          ),
          CustomSize(h: 35,),
          Row(children: [
           Text(
          'Delivery by ',
          style: AppStyles.stylesRegular14(context).copyWith(color: Colors.black),
        ),
          Text(
          '  10 May 2XXX',
          style: AppStyles.stylesemiBold18(context).copyWith(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
          ],),
        ],
      ),
    );
  }
}
