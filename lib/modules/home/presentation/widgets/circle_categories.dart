import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/modules/home/data/models/circle_category_model.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/circle_category_item.dart';

class CircleCategories extends StatelessWidget {
  const CircleCategories({super.key});
  static const List<CircleCategoryModel> categories = [
   CircleCategoryModel( image: Assets.imagesBeuty, categoryName: 'Beuty'),
   CircleCategoryModel( image: Assets.imagesFation, categoryName: 'Fasion'),
   CircleCategoryModel( image: Assets.imagesKids, categoryName: 'Kids'),
   CircleCategoryModel( image: Assets.imagesMens, categoryName: 'Mens'),
   CircleCategoryModel( image: Assets.imagesWamens, categoryName: 'Womens'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        height: 95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            children: categories
                .map((category) => Expanded(
                  child: GestureDetector(
                    onTap: (){},
                    child: CircleCategoryItem(
                          image: category.image,
                          categoryName: category.categoryName,
                        ),
                  ),
                ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
