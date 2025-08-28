
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/logic/app_them.dart';

class PaymentGatewayItem extends StatelessWidget {
  const PaymentGatewayItem({super.key, required this.image, required this.isSelected});
  final String image;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final modeProvider= Provider.of<ModeProvider>(context).lightModeEnable;
    return Container(
      height: 60,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side:isSelected? BorderSide(
            color: Colors.red,
            width: 2,
          ) :BorderSide.none,
        ),
        color:modeProvider?Color(0xffEEEEEE):Colors.black.withValues(alpha:0.6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Image.asset(
              image,
              fit: BoxFit.contain,
            ),
            Spacer(),
            Text(
              '*********2109',
              style: AppStyles.stylesMedium18(context),
            )
          ],
        ),
      ),
    );
  }
}
