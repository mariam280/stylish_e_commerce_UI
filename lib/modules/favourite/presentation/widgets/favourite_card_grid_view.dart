import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/modules/favourite/presentation/widgets/favourite_card.dart';
import 'package:stylish_e_commerce/modules/home/data/models/card_model.dart';

class FavouriteCardGridView extends StatelessWidget {
   FavouriteCardGridView({super.key});
  final List<CardModel> favouriteCards = [
    CardModel(
      image: Assets.imagesBlackWinter,
        title: 'Women Printed Kurta',
        description: 'Neque porro quisquam est qui\ndolorem ipsum quia',
        price: '₹1500'),
    CardModel(
      image: Assets.imagesMensStarry,
        title: 'HRX by Hrithik Roshan',
        description: 'Neque porro quisquam est qui\ndolorem ipsum quia',
        price: '₹2499'),
    CardModel(
      image: Assets.imagesBlackjacket,
        title: 'Flare Dress',
        description: 'Antheaa Black & Rust Orange\nFloral Print Tiered Midi F...',
        price: '₹1500'),
    CardModel(
      image: Assets.imagesRealme7,
        title: 'Flare Dress',
        description: 'Antheaa Black & Rust Orange\nFloral Print Tiered Midi F...',
        price: '₹1500'),
    CardModel(
      image: Assets.imagesDigitalCamera,
        title: 'Flare Dress',
        description: 'Antheaa Black & Rust Orange\nFloral Print Tiered Midi F...',
        price: '₹1500'),
    CardModel(
      image: Assets.imagesFlareDress,
        title: 'Flare Dress',
        description: 'Antheaa Black & Rust Orange\nFloral Print Tiered Midi F...',
        price: '₹1500'),    
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        childAspectRatio: 0.7),
        itemCount: favouriteCards.length,
        itemBuilder: (context, index) {
          return FavouriteCard(cardModel: favouriteCards[index]);
        },
    );
  }
}