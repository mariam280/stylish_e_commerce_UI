import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

void showPaymentSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 30,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Align(
            //   alignment: Alignment.topRight,
            //   child: GestureDetector(
            //     onTap: () => Navigator.pop(context),
            //     child: Icon(Icons.close, size: 20),
            //   ),
            // ),
            Stack(children: [
              Center(child: Image.asset(Assets.imagesStar1,fit: BoxFit.contain,)),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Center(child: Icon(Icons.check,size: 60,color: Colors.white,)),
              ),
            ],),
            Text(
              S.of(context).paymentSuccess,
              style: AppStyles.stylesemiBold14(context).copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    ),
  );
}
