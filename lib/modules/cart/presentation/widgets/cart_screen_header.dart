import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

class CartScreenHeader extends StatelessWidget {
  const CartScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Align(
          alignment: Alignment.center,
          child: Text(S.of(context).cartScreen,style: AppStyles.stylesemiBold18(context).copyWith(
            color: Colors.black
          ),),
        ),
        Divider(
          thickness: 0.3,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
          Icon(Icons.location_on_outlined),
          Text(S.of(context).deliveryAddress,style: AppStyles.stylesemiBold14(context).copyWith(
          color: Colors.black
        ),),
        ],)
      ],),
    );
  }
}