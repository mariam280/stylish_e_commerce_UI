import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/widgets/custom_card.dart';

class CartAdressInfo extends StatelessWidget {
  const CartAdressInfo({super.key, this.onTap});
  final void Function()? onTap;
 // final AdressModel adressModel;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      aspectRatio: 241/85,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child:GestureDetector(
                    onTap: onTap,
                    child: Image.asset( Assets.imagesEditButton)),),
                  Text(
                  'Adress: ',
                  style: AppStyles.stylesMedium16(context).copyWith(fontSize: 12),
                ),
                Row(
                  children: [
                    Text(
                     '216 St Paul\'s Rd,',
                      style: AppStyles.stylesRegular12(context)
                    ),
                   Text(
                   ' London N1 2LL,',
                  maxLines: 2,
                  style: AppStyles.stylesRegular12(context),
                ),
                    Text(
                      ' UK',
                      style: AppStyles.stylesRegular12(context)
                    ),
                  ],
                ),
                Text(
                   'Contact: +201164849938',
                  style: AppStyles.stylesRegular12(context),
                ),
              ],
            ),
      ),
    );
  }
}
