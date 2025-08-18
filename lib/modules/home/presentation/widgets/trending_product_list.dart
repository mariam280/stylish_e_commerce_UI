import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/modules/home/data/models/card_model.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/trendin_product.dart';

class TrendingProductList extends StatelessWidget {
   TrendingProductList({super.key});
  final List<CardModel> lowerCards = [
    CardModel(
        image: Assets.imagesWatch,
        description: 'IWC Schaffhausen\n2021 Pilot\'s Watch\n"SIHH 2019" 44mm',
        price: '₹650'),
    CardModel(
        image: Assets.imagesBlackWinter,
        description: 'Labbin White]nSneakers\nFor Men and Female',
        price: '₹750'),
    CardModel(
        image: Assets.imagesBlackjacket,
        description:
            'Mammon Women\'s\nHandbag\n(Set of 3, Beige)',
        price: '₹650'),
  ];
  @override
  Widget build(BuildContext context) {
    // 
    return SizedBox(
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: lowerCards.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){},
            child: TrendingProduct(
              cardModel: lowerCards[index],
            ),
          );
        },
      ),
    );
  }
}
