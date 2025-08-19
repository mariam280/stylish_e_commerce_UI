import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/custom_card.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/hot_summer_sales_info.dart';

class HotSummerSale extends StatelessWidget {
  const HotSummerSale({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      aspectRatio: 343/270,
      child: HotSummerSaleInfo());
  }
}