import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/hot_summer_sales_info.dart';

class HotSummerSale extends StatelessWidget {
  const HotSummerSale({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 343 / 270,
      child: Card(
        color: Colors.white,
        elevation: 6, // درجة الظل
        shadowColor: Colors.black.withValues(alpha: 0.3),
        child:HotSummerSaleInfo() ,
      ),
    );
  }
}