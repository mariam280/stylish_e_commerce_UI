import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shop_now_image.dart';

import '../../../../generated/l10n.dart';

class SponseredCardInfo extends StatelessWidget {
  const SponseredCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Text(S.of(context).sponser,style: AppStyles.stylesMedium16(context).copyWith(fontSize: 20),),
      ),
      ShopNowImage(aspectRatio: 349/286,image: Assets.imagesUptosponsered,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(S.of(context).upToOff,style: AppStyles.styleBold36(context).copyWith(fontSize: 16),),
          Icon(Icons.arrow_forward_ios,size: 12,),
        ],),
      )
    ],);
  }
}