import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shop_now_image.dart';

class HotSummerSaleInfo extends StatelessWidget {
  const HotSummerSaleInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      ShopNowImage(aspectRatio: 343/200),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Text('New Arrivals ', style: AppStyles.stylesMedium16(context).copyWith(fontSize: 20),),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Summer’ 25 Collections',style: AppStyles.stylesRegular12(context).copyWith(fontSize: 16),),
          Image.asset(Assets.imagesViewAll),
        ],),
      )
    ],);
  }
}