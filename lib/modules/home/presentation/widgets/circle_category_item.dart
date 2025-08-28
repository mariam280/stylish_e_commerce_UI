import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';

class CircleCategoryItem extends StatelessWidget {
  const CircleCategoryItem({super.key, required this.image, required this.categoryName});
  final String image, categoryName;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(image)
        ),
        Text(categoryName,style: AppStyles.stylesRegular12(context),),
      ],
    );
  }
}
