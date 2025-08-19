import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_card.dart';
import 'package:stylish_e_commerce/modules/home/data/models/card_model.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/upper_home_card_info.dart';

class DealOfTheDayProduct extends StatelessWidget {
  const DealOfTheDayProduct({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      aspectRatio: 170/241,
      child: UpperHomeCardInfo(
        title: cardModel.title!,
        description: cardModel.description,
        price: cardModel.price,
        image: cardModel.image,
        widget: RichText(
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
                text: '  50%Off',
                style: AppStyles.stylesRegular12(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
