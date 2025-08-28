import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_text_button.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

class ShoppingBagCoupon extends StatelessWidget {
  const ShoppingBagCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(Assets.imagesCoupon),
      CustomSize(w: 10,),
      Text(S.of(context).applyCopon,style: AppStyles.stylesMedium16(context),),
      Spacer(),
      CustomTextButton(
        text: S.of(context).select, 
        onPressed: (){}, 
        textStyle: TextStyle(
          fontSize: 14,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
        ))
    ],);
  }
}