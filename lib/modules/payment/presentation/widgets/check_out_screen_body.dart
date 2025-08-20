import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/payment/presentation/widgets/check_out_info.dart';
import 'package:stylish_e_commerce/modules/payment/presentation/widgets/check_out_payment_gateways.dart';
import 'package:stylish_e_commerce/modules/payment/presentation/widgets/check_out_screen_header.dart';

class CheckOutScreenBody extends StatelessWidget {
  const CheckOutScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        spacing: 20,
        children: [
          CheckOutScreenHeader(),
          Divider(
            thickness: 0.3,
          ),
          CheckOutInfo(),
          Divider(),
          CheckOutPaymentGateways(),
        ],
      ),
    );
  }
}
