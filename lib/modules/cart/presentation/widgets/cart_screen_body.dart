import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';
import 'package:stylish_e_commerce/modules/cart/presentation/widgets/adress_info_add_buttons.dart';
import 'package:stylish_e_commerce/modules/cart/presentation/widgets/cart_item_list.dart';
import 'package:stylish_e_commerce/modules/cart/presentation/widgets/cart_screen_header.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CartScreenHeader(),
          AdressInfoAddButtons(),
          CustomSize(h: 16,),
          Text(S.of(context).shoppingList,style: AppStyles.stylesemiBold18(context).copyWith(
            color: Colors.black
          ),),
          Expanded(child: CartItemList()),
          CustomSize(h:MediaQuery.sizeOf(context).height*0.07),
        ],
      ),
    );
  }
}
