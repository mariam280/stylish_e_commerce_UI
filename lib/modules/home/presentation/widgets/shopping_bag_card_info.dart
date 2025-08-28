import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

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
              style: AppStyles.stylesemiBold14(context).copyWith(color: AppColors.secondaryColor(context)),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('Checked Single-Breasted Blaze\n',style: AppStyles.stylesMedium16(context).copyWith(fontSize: 12),),
          ),
          CustomSize(h: 35,),
          Row(children: [
           Text(
          S.of(context).deliverBy,
          style: AppStyles.stylesRegular14(context).copyWith(color: AppColors.secondaryColor(context)),
        ),
          Text(
          '  10 May 2XXX',
          style: AppStyles.stylesemiBold18(context).copyWith(
            color: AppColors.secondaryColor(context),
            fontSize: 16,
          ),
        ),
          ],),
        ],
      ),
    );
  }
}
