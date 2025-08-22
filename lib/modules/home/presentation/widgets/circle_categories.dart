import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';
import 'package:stylish_e_commerce/modules/home/data/models/circle_category_model.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/circle_category_item.dart';

class CircleCategories extends StatelessWidget {
  const CircleCategories({super.key});
  @override
  Widget build(BuildContext context) {
    final List<CircleCategoryModel> categories = [
      CircleCategoryModel(image: Assets.imagesBeuty, categoryName: S.of(context).beuty),
      CircleCategoryModel(image: Assets.imagesFation, categoryName: S.of(context).fashion),
      CircleCategoryModel(image: Assets.imagesKids, categoryName: S.of(context).kids),
      CircleCategoryModel(image: Assets.imagesMens, categoryName: S.of(context).mens),
      CircleCategoryModel(image: Assets.imagesWamens, categoryName: S.of(context).womens),
    ];
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
