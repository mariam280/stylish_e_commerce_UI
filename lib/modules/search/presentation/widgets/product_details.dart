import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/star_widget.dart';
import 'package:stylish_e_commerce/modules/search/presentation/widgets/nearest_vip_return.dart';
import 'package:stylish_e_commerce/modules/search/presentation/widgets/product_details_list.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size: 7UK',
          style:
              AppStyles.stylesemiBold14(context).copyWith(color: Colors.black),
        ),
        ProductDetailsList(),
        Text(
          'NIke Sneakers',
          style:
              AppStyles.stylesemiBold18(context).copyWith(color: Colors.black),
        ),
        Text(
          'Vision Alta Men’s Shoes Size (All Colours)',
          style:
              AppStyles.stylesRegular14(context).copyWith(color: Colors.black),
        ),
        StarWidget(),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: r'$4999',
                style: AppStyles.stylesRegular12(context).copyWith(
                  color: Color(0xff808488),
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              TextSpan(
                text: r' $4999',
                style: AppStyles.stylesemiBold14(context)
                    .copyWith(color: Colors.black),
              ),
              TextSpan(
                text: '  50%Off',
                style: AppStyles.stylesRegular12(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        Text(
          'Product Details',
          style:
              AppStyles.stylesemiBold14(context).copyWith(color: Colors.black),
        ),
        Text(
          'Perhaps the most iconic sneaker of all-time, this original\n"Chicago"? colorway is the cornerstone to any sneaker\ncollection. Made famous in 1985 by Michael Jordan, the\nshoe has stood the test of time, becoming the most\nfamous colorway of the Air Jordan 1. This 2015 release saw\nthe ...',
          maxLines: 6,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.stylesRegular12(context),
        ),
        Row(
        spacing: 8,
        children: [
        NearestVipReturn(image: Assets.imagesNearestStore,onTap:() {},),
        NearestVipReturn(image: Assets.imagesVip,onTap:() {},),
        NearestVipReturn(image: Assets.imagesReturnPolicy,onTap:() {},),
        ],),
      ],
    );
  }
}
