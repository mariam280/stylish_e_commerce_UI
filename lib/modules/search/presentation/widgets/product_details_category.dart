
import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/modules/search/data/models/product_details_model.dart';

class ProductDetailsCategory extends StatelessWidget {
  const ProductDetailsCategory({super.key, required this.productDetailsModel});
  final ProductDetailsModel productDetailsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color:productDetailsModel.isSelected ? AppColors.primaryColor : const Color(0xffF3F3F3),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.primaryColor),
      ),
      child:  Center(
        child: Text(
          productDetailsModel.name,
          style: productDetailsModel.isSelected ?
           AppStyles.stylesemiBold14(context).copyWith(color: Colors.white):
            AppStyles.stylesemiBold14(context).copyWith(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
