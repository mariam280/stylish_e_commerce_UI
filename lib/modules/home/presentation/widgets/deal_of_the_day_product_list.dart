import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/modules/home/data/models/card_model.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/deal_of_the_day_product.dart';

class DealOfTheDayProductList extends StatelessWidget {
  DealOfTheDayProductList({super.key});
  final List<CardModel> upperCards = [
    CardModel(
      image: Assets.imagesPhotoList,
        title: 'Women Printed Kurta',
        description: 'Neque porro quisquam est qui\ndolorem ipsum quia',
        price: '₹1500'),
    CardModel(
      image: Assets.imagesNike,
        title: 'HRX by Hrithik Roshan',
        description: 'Neque porro quisquam est qui\ndolorem ipsum quia',
        price: '₹2499'),
    CardModel(
      image: Assets.imagesFlareDress,
        title: 'Flare Dress',
        description: 'Antheaa Black & Rust Orange\nFloral Print Tiered Midi F...',
        price: '₹1500'),
  ];
  @override
  Widget build(BuildContext context) {   // 170/241
    return SizedBox(
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: upperCards.length,
        itemBuilder: (context, index) {
          return DealOfTheDayProduct(
            cardModel: upperCards[index],
          );
        },
      ),
    );
  }
}
