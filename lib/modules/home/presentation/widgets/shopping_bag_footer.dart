import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_button.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';

class ShoppingBagFooter extends StatelessWidget {
  const ShoppingBagFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 393 / 146,
      child: Container(
        decoration: ShapeDecoration(
            color: Color(0xffF2F2F2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(40)),
                side: BorderSide(color: Colors.grey.shade400))),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Column(
                  spacing: 8,
                  children: [
                    CustomSize(
                      h: 20,
                    ),
                    Text(
                      r'$ 7,000.00',
                      style: AppStyles.stylesemiBold18(context)
                          .copyWith(color: Colors.black),
                    ),
                    Text(
                      'View Details',
                      style: AppStyles.stylesemiBold18(context)
                          .copyWith(fontSize: 12),
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  child: CustomButon(
                    text: 'Proceed to Payment',
                    onTap: () {
                      GoRouter.of(context).go(AppRouters.checkOut);
                    },
                    color: AppColors.primaryColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
