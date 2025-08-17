import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/custom_dot_shop_now.dart';

class CustomDotShopNowList extends StatelessWidget {
  const CustomDotShopNowList({super.key, required this.currentPageIndex});

  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotShopNow(isActive: index==currentPageIndex),
        ),
      ),
    );
  }
}
