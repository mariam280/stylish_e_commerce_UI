import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';
import 'package:stylish_e_commerce/core/widgets/custom_card.dart';
import 'package:stylish_e_commerce/modules/home/data/models/card_model.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/upper_home_card_info.dart';

class SimilartToItemsList extends StatelessWidget {
  SimilartToItemsList({super.key});
  final List<CardModel> similarItems = [
    CardModel(
        image: Assets.imagesNike,
        title: 'Nike Sneeckar',
        description: 'Nike Air Jordan Retro 1 Low\nMystic Black',
        price: '₹1900'),
    CardModel(
        image: Assets.imagesPhotoList,
        title: 'HRX by Hrithik Roshan',
        description: 'Mid Peach Mocha Shoes For\nMan White Black Pink S...',
        price: '₹2499'),
    CardModel(
        image: Assets.imagesFlareDress,
        title: 'Flare Dress',
        description:
            'Antheaa Black & Rust Orange\nFloral Print Tiered Midi F...',
        price: '₹1900'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 245,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: similarItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).go(AppRouters.shoppingBag);
            },
            child: CustomCard(
              aspectRatio: 164/245,
              child: UpperHomeCardInfo(
                  title: similarItems[index].title!,
                  description: similarItems[index].description,
                  price: similarItems[index].price,
                  image: similarItems[index].image),
            ),
          );
        },
      ),
    );
  }
}
