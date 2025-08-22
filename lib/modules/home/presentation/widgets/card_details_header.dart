import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

class ShoppingBagHeader extends StatelessWidget {
  const ShoppingBagHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).go(AppRouters.layout);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        Spacer(),
        Text(
          S.of(context).shoppingBagScreen,
          style:
              AppStyles.stylesemiBold18(context).copyWith(color: Colors.black),
        ),
        Spacer(),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
      ],
    );
  }
}
