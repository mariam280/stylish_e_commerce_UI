import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';
import 'package:stylish_e_commerce/modules/payment/presentation/widgets/check_out_details_text.dart';

class CheckOutInfo extends StatelessWidget {
  const CheckOutInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      spacing: 20,
      children: [
        CheckOutDetailsText(title: S.of(context).order, subTitle: r'$ 7,000'),
        CheckOutDetailsText(title: S.of(context).shipping, subTitle: r'$ 30'),
        CheckOutDetailsText(title: S.of(context).total, subTitle: r'$ 30', style: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    ),), ],
    );
  }
}