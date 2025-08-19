import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/widgets/custom_card.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/modules/cart/presentation/widgets/cart_adress_info.dart';

class AdressInfoAddButtons extends StatelessWidget {
  const AdressInfoAddButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Expanded(
        flex: 3,
        child: CartAdressInfo(onTap: (){},)),
      CustomSize(w: 4,),
      Expanded(
        child: CustomCard(
        aspectRatio: 78/79,
        child: GestureDetector(
          onTap: (){},
          child: Image.asset(Assets.imagesAddButton)),),
      ),
    ],);
  }
}