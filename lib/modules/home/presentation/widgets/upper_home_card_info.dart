import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/deal_of_the_day_image.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/star_widget.dart';

class UpperHomeCardInfo extends StatelessWidget {
  const UpperHomeCardInfo(
      {super.key,
      required this.title,
      required this.description,
      required this.price,
      required this.image, this.widget});
  final String title, description, image;
  final String price;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 6,
        children: [
          DealOfTheDayImage(
            image: image,
            aspectRatio: 170 / 124,   //164/136
          ),
          Text(
            title,
            style: AppStyles.stylesMedium16(context).copyWith(fontSize: 12),
          ),
          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.stylesRegular12(context).copyWith(fontSize: 10),
          ),
          Text(
            '\$$price',
            style: AppStyles.stylesMedium16(context).copyWith(fontSize: 12),
          ),
          if(widget != null) widget!,
          StarWidget(),
        ],
      ),
    );
  }
}
