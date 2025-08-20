import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/helper/custom_payment_dialog.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_button.dart';
import 'package:stylish_e_commerce/modules/payment/presentation/widgets/payment_gateway_item.dart';

class CheckOutPaymentGateways extends StatelessWidget {
  const CheckOutPaymentGateways({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 30,
        children: [
          Text(
            'Payment',
            style: AppStyles.stylesMedium18(context),
          ),
          PaymentGatewayItem(image: Assets.imagesVisa, isSelected: true),
          PaymentGatewayItem(image: Assets.imagesPaypal, isSelected: false),
          PaymentGatewayItem(image: Assets.imagesMaestro, isSelected: false),
          PaymentGatewayItem(
              image: Assets.imagesApplepayment, isSelected: false),
          CustomButon(
            text: 'Continue',
            onTap: () {
              showPaymentSuccessDialog(context);
            },
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
