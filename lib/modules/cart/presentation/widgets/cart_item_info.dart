import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_text_button.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';

class CartItemInfo extends StatelessWidget {
  const CartItemInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
           fit: BoxFit.scaleDown,
          child: Text(
            'Women’s Casual Wear',
            style: AppStyles.stylesemiBold14(context).copyWith(color: AppColors.secondaryColor(context)),
          ),
        ),
       Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        Text('Variations : ',style: AppStyles.stylesMedium16(context).copyWith(fontSize: 12),),
        CustomTextButton(
          side: BorderSide(color: Colors.grey.shade300),
          text: 'Black', onPressed: (){}, textStyle:  TextStyle(
          fontSize: 12,
          color: AppColors.secondaryColor(context),
          fontWeight: FontWeight.w700,
        )),
        CustomSize(w: 8,),
        CustomTextButton(
          side: BorderSide(color: Colors.grey.shade300),
          text: 'Red', onPressed: (){}, textStyle:   TextStyle(
          fontSize: 12,
          color: AppColors.secondaryColor(context),
          fontWeight: FontWeight.w700,
        )),
       ],),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '4.6 ',
              style: AppStyles.stylesMedium16(context).copyWith(color: AppColors.secondaryColor(context))
            ),
            ...List.generate(
            5,
            (index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 16,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          CustomTextButton(
          side:   BorderSide(color: Colors.grey.shade300),
          text: '\$ 34.00', onPressed: (){}, textStyle:   TextStyle(
          fontSize: 10,
          color: AppColors.secondaryColor(context),
          fontWeight: FontWeight.w500,
        )),
        Column(children: [
           Padding(
             padding: const EdgeInsets.all(8),
             child: Text(
              'upto 33% off  ',
              style: AppStyles.stylesMedium16(context).copyWith(
                fontSize: 8,
                color: AppColors.primaryColor),
                       ),
           ),
           Text(
            '\$ 64.00',            
            style: AppStyles.stylesMedium18(context).copyWith(fontSize: 12,decoration: TextDecoration.lineThrough,),
          ),
        ],)
        ],)
      ],
    );
  }
}
