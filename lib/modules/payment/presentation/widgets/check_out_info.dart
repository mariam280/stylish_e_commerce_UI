import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/payment/presentation/widgets/check_out_details_text.dart';

class CheckOutInfo extends StatelessWidget {
  const CheckOutInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 20,
      children: [
        CheckOutDetailsText(title: 'Order', subTitle: r'$ 7,000'),
        CheckOutDetailsText(title: 'Shipping', subTitle: r'$ 30'),
        CheckOutDetailsText(title: 'Total', subTitle: r'$ 30', style: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    ),), ],
    );
  }
}