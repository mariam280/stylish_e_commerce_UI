import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_card.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';
import 'package:stylish_e_commerce/modules/cart/presentation/widgets/cart_item_info.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/deal_of_the_day_image.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});
  //final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      aspectRatio: 331/191,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 125,
                  child: DealOfTheDayImage(image: Assets.imagesBlackjacket, aspectRatio: 130/125)),
                CustomSize(w: 10,),
                Expanded(
                  child: CartItemInfo(),
                )
              ],
            ),
            Divider(
              thickness: 0.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(S.of(context).totalOrder,style: AppStyles.stylesMedium16(context).copyWith(fontSize: 12),),
              Text('\$ 34.00',style: AppStyles.stylesemiBold14(context).copyWith(
                color: AppColors.secondaryColor(context),
                fontSize: 12,
              ),),
            ],)
          ],
        ),
      ),
    );
  }
}
